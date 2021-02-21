package eightqueens;

import com.rr.core.Shader;
import com.rr.core.Texture;
import com.rr.core.VAO.DrawMode;
import com.rr.graphics.p3d.Model;
import com.rr.math.Matrix4;
import com.rr.math.Vector3;
import com.rr.res.Resource;

public class Queen
{

	private static Model queenModel;
	private static Texture queenTextureWhite;
	private static Texture queenTextureBlack;

	private static boolean white = false;

	public static void init()
	{
		queenModel = Resource.internal.getModel("/eightqueens/queen.obj").createModel();
		queenTextureWhite = Resource.internal.getTexture("/eightqueens/queenWhite.png");
		queenTextureBlack = Resource.internal.getTexture("/eightqueens/queenBlack.png");
	}

	public final Vector3 position;
	public float dy;

	private final boolean first;

	public Queen(Vector3 position, boolean first)
	{
		this.position = position;
		this.dy = 0.0f;
		this.first = first;
	}

	public void render(Shader shader)
	{
		if (first)
		{
			queenTextureBlack.bind(0);
			white = false;
		} else if (!white)
		{
			queenTextureWhite.bind(0);
			white = true;
		}
		shader.set("model", Matrix4.fromTranslation(position.x, position.y, position.z));
		queenModel.getVAO().draw(DrawMode.TRIANGLES, queenModel.getTriCount(), 0);
	}

	public static void begin()
	{
		queenModel.getVAO().bind();
		queenModel.getVAO().enableAttribs();
	}

	public static void end()
	{}

}
