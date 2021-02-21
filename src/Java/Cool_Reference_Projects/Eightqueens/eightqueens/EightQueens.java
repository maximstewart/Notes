package eightqueens;

import javax.swing.JOptionPane;

import com.rr.Application;
import com.rr.Mouse;
import com.rr.RunConfiguration;
import com.rr.Screen;
import com.rr.core.FBO;
import com.rr.core.Shader;
import com.rr.core.Texture;
import com.rr.core.VAO.DrawMode;
import com.rr.entity.PerspectiveCamera;
import com.rr.graphics.GLState;
import com.rr.graphics.p3d.Model;
import com.rr.math.Calc;
import com.rr.math.Color4;
import com.rr.math.Matrix4;
import com.rr.math.Quaternion;
import com.rr.math.Vector2i;
import com.rr.math.Vector3;
import com.rr.res.Resource;
import com.rr.util.Ray;

public class EightQueens extends Application
{

	private static final int WIDTH = 1280;
	private static final int HEIGHT = 720;

	private static final float BOARD_HEIGHT = 0.0f;
	private static final float SENSITIVITY = 10.0f;

	private Queen[] queens;
	private Texture boardTexture;
	private Texture boardHeightmap;
	private Model boardFrame;
	private Model boardTop;

	private FBO queensFBO;
	private Texture queensFBOTexture;

	private Shader shader;
	private Matrix4 projection;
	private float cameraDistance;
	private float cameraHeight;
	private float cameraRotation;
	private float lerpedCameraRot;
	private float lerpedCameraHeight;
	private float lerpedCameraDistance;

	private int lastMouseX, lastMouseY;

	private Algorithm algorithm;
	private int firstX, firstY;
	private int boardWidth, boardHeight;
	private boolean firstSet = false;
	private Thread spawner;

	@Override
	protected void initApp()
	{

		try
		{
			boardWidth = Integer.parseInt(JOptionPane.showInputDialog("Enter the chess board size (must be even!):"));
			boardHeight = boardWidth;
		} catch (Exception e)
		{
			JOptionPane.showMessageDialog(null, "Input must be an integer greater than 0.");
			System.exit(-1);
		}

		queens = new Queen[Math.min(boardWidth, boardHeight)];

		if (boardWidth <= 3 || boardHeight <= 3)
		{
			JOptionPane.showMessageDialog(null, "Board size must be bigger than 3 for the puzzle to be solvable.");
			System.exit(-1);
		}
		if (boardWidth % 2 == 1 || boardHeight % 2 == 1)
		{
			JOptionPane.showMessageDialog(null, "Board size must be even.");
			System.exit(-1);
		}

		JOptionPane.showMessageDialog(null, "Click on a field to set the first queen's position.");

		algorithm = new Algorithm(boardWidth, boardHeight);

	}

	@Override
	public void create()
	{
		GLState.setDepth(true);
		GLState.setCulling(true);
		GLState.setMultisample(true);
		GLState.setClearColor(Color4.BLACK);

		boardTexture = Resource.internal.getTexture("/eightqueens/board.png");
		boardTexture.setTextureFilter(true, false);
		boardHeightmap = Resource.internal.getTexture("/eightqueens/boardHeight.png");
		boardHeightmap.setTextureFilter(true, false);
		boardFrame = Resource.internal.getModel("/eightqueens/boardFrame.obj").createModel();
		boardTop = Resource.internal.getModel("/eightqueens/boardTop.obj").createModel();
		shader = Resource.internal.getShader("/eightqueens/diffuse");
		projection = Matrix4.perspective(50.0f, 16.0f / 9.0f, 0.1f, 1000.0f);
		cameraDistance = 20.0f * Math.max(boardWidth, boardHeight) / 8.0f;
		cameraHeight = 40.0f;
		cameraRotation = 0.0f;

		lastMouseX = Mouse.getX();
		lastMouseY = Mouse.getY();

		Queen.init();

		shader.start();
		shader.set("projection", projection);

		queensFBO = new FBO(WIDTH, HEIGHT);
		queensFBO.bind();
		queensFBOTexture = queensFBO.addColorAttachmentTexture(0);
		queensFBOTexture.setTextureFilter(true, false);
		queensFBO.setDepthAttachmentTexture();
		queensFBO.setDepthBuffer(false);

	}

	@Override
	public void fixedUpdate(float dt)
	{
		int mouseDX = Mouse.getX() - lastMouseX;
		int mouseDY = Mouse.getY() - lastMouseY;
		lastMouseX = Mouse.getX();
		lastMouseY = Mouse.getY();

		if (firstSet)
		{
			cameraDistance -= Mouse.getWheel() * 0.04f;
			cameraDistance = Math.max(cameraDistance, 5.0f);
			cameraDistance = Math.min(cameraDistance, Math.max(boardWidth, boardHeight) * 10.0f);

			if (Mouse.isButtonDown(0))
			{
				cameraRotation -= mouseDX * dt * SENSITIVITY;
				cameraHeight -= mouseDY * dt * SENSITIVITY;
			}
		}

		cameraHeight = Math.max(cameraHeight, -20.0f);
		cameraHeight = Math.min(cameraHeight, 88.0f);

		lerpedCameraRot = Calc.interpolateLinear(lerpedCameraRot, cameraRotation, 8.0f * dt);
		lerpedCameraHeight = Calc.interpolateLinear(lerpedCameraHeight, cameraHeight, 8.0f * dt);
		lerpedCameraDistance = Calc.interpolateLinear(lerpedCameraDistance, cameraDistance, 4.0f * dt);
	}

	@Override
	public void update(float dt)
	{
		if (Mouse.isButtonReleased(0) && !firstSet)
		{

			Matrix4 cameraM = new Matrix4();
			cameraM.translate(0, 0, lerpedCameraDistance);
			cameraM.rotate(Vector3.RIGHT, lerpedCameraHeight);
			cameraM.rotate(Vector3.UP, lerpedCameraRot);

			PerspectiveCamera camera = new PerspectiveCamera(50.0f, 0.1f, 100.0f);
			camera.transform.setPosition(cameraM.getTranslation());
			camera.transform.setRotation(cameraM.getRotation());
			Ray ray = camera.screenPointToRay(new Vector2i(Mouse.getX(), Mouse.getY()));

			Vector3 position = ray.origin.rotate(Quaternion.fromEulerAngles(lerpedCameraHeight, lerpedCameraRot, 0));
			Vector3 direction = ray.direction;
			float distance = -position.y / direction.y;
			Vector3 cursorPosition = new Vector3(position.x + distance * direction.x, position.y + distance * direction.y, position.z + distance * direction.z);

			firstX = (int) (0.5f * (cursorPosition.x + boardWidth));
			firstY = (int) (0.5f * (cursorPosition.z + boardHeight));

			firstX = Math.max(firstX, 0);
			firstX = Math.min(firstX, boardWidth - 1);

			firstY = Math.max(firstY, 0);
			firstY = Math.min(firstY, boardHeight - 1);

			firstSet = true;

			algorithm.calculate(firstX, firstY);

			spawner = new Thread()
			{
				@Override
				public void run()
				{
					// Wrap around
					for (int y = 0; y < boardHeight; y++)
					{
						int x = algorithm.lines[y];
						int wrappedX = (x + firstX - algorithm.firstOffsetX) % boardWidth;
						int wrappedY = (y + firstY) % boardHeight;
						if (y >= Math.min(boardWidth, boardHeight))
						{
							break;
						}
						spawnQueen(wrappedX, wrappedY, y, y == 0);

						try
						{
							Thread.sleep(y == 0 ? 1000 : 200);
						} catch (InterruptedException e)
						{
							e.printStackTrace();
						}
					}
				}
			};

			spawner.start();
		}

		for (int i = 0; i < queens.length; i++)
		{
			if (queens[i] == null)
			{
				continue;
			}
			Queen q = queens[i];
			if (q.position.y != BOARD_HEIGHT)
			{
				q.dy += dt * -9.81f;
				if (q.position.y + q.dy < BOARD_HEIGHT)
				{
					q.position.y = BOARD_HEIGHT;
					q.dy = 0.0f;
				} else
				{
					q.position.y += q.dy;
				}
			}
		}
	}

	@Override
	public void render(float dt)
	{
		// Camera rotation
		Matrix4 view = new Matrix4();

		Texture.unbind();
		queensFBO.bind();
		Screen.clear();

		view.rotate(Vector3.RIGHT, -lerpedCameraHeight);
		view.rotate(Vector3.UP, -lerpedCameraRot);
		view.translate(0, 0, -lerpedCameraDistance);
		shader.set("view", view);
		shader.set("tex", 0);

		Queen.begin();
		for (int i = 0; i < queens.length; i++)
		{
			if (queens[i] != null)
			{
				queens[i].render(shader);
			}
		}

		FBO.unbind();

		view.setIdentity();
		view.rotate(Vector3.RIGHT, lerpedCameraHeight);
		view.rotate(Vector3.UP, -lerpedCameraRot);
		view.translate(0, 0, -lerpedCameraDistance);
		shader.set("view", view);

		Queen.begin();
		for (int i = 0; i < queens.length; i++)
		{
			if (queens[i] != null)
			{
				queens[i].render(shader);
			}
		}

		FBO.unbind();

		boardTexture.bind(0);

		shader.set("model", Matrix4.fromScale(boardWidth / 8, 1, boardWidth / 8));
		boardFrame.getVAO().bind();
		boardFrame.getVAO().enableAttribs();
		boardFrame.getVAO().draw(DrawMode.TRIANGLES, boardFrame.getTriCount(), 0);

		boardHeightmap.bind(1);
		shader.set("heights", 1);
		queensFBOTexture.bind(2);
		shader.set("reflection", 2);

		shader.set("model", Matrix4.fromScale(boardWidth / 2, 1, boardHeight / 2).set(3, 3, 1.0023f));
		boardTop.getVAO().bind();
		boardTop.getVAO().enableAttribs();
		boardTop.getVAO().draw(DrawMode.TRIANGLES, boardTop.getTriCount(), 0);
	}

	private void spawnQueen(int x, int z, int index, boolean first)
	{
		Vector3 newPosition = new Vector3((x - boardWidth / 2.0f + 0.5f) * 2, 10.0f, (z - boardHeight / 2.0f + 0.5f) * 2);
		Queen queen = new Queen(newPosition, first);
		queens[index] = queen;
	}

	public static void main(String[] args)
	{
		RunConfiguration config = new RunConfiguration();
		config.context.versionMajor = 3;
		config.context.versionMinor = 3;
		config.samples = 8;
		config.screenWidth = WIDTH;
		config.screenHeight = HEIGHT;
		config.windowTitle = "The Eight Queens Puzzle";
		config.fpsCap = 120;
		Application.run(config, EightQueens.class);
	}

}
