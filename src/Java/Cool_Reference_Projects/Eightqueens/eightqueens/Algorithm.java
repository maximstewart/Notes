package eightqueens;

import java.util.Arrays;
import java.util.Random;

public class Algorithm
{

	public final int[] lines;

	private final Random random;
	private final int width, height;
	private final int numQueens;

	public int firstOffsetX = 0;

	public Algorithm(int width, int height)
	{
		this.width = width;
		this.height = height;

		numQueens = Math.min(width, height);
		lines = new int[height];
		Arrays.fill(lines, -1);

		random = new Random();
	}

	public void calculate(int firstX, int firstY)
	{
		calculate(0, firstX, firstY);
	}

	private boolean calculate(int row, int firstX, int firstY)
	{
		// We've reached the bottom of the board
		if (row >= numQueens)
		{
			return true;
		}
		int seed = random.nextInt(width);
		// Loop through the x positions
		for (int i = 0; i < width; i++)
		{
			// Use the seed to create random x values, but only if we are not in the first row,
			// so that the first queen's position doesn't change
			int x = row == 0 ? i : (i + seed) % width;

			// If this position is free, place the queen here
			if (isFree(x, row, firstX, firstY))
			{
				lines[row] = x;
				// If the puzzle is solvable for the remaining rows return true,
				// else go to the next column
				if (calculate(row + 1, firstX, firstY))
				{
					return true;
				} else
				{
					if (row == 0)
					{
						firstOffsetX++;
					}
					lines[row] = -1;
				}
			}

		}
		// We've not found a solution, so return false
		return false;
	}

	private boolean isFree(int x, int y, int firstX, int firstY)
	{
		for (int row = 0; row < height; row++)
		{
			if (row == y || lines[row] == -1)
			{
				continue;
			}
			// If there is a queen above or below, return false
			if (lines[row] == x)
			{
				return false;
			}

			// Check diagonals
			int xx = (x + firstX) % width;
			int yy = (y + firstY) % height;
			int rrow = (row + firstY) % height;
			int heightDifference = Math.abs(rrow - yy);
			int widthDifference = Math.abs(((lines[row] + firstX) % width) - xx);
			if (widthDifference == heightDifference)
			{
				return false;
			}

		}
		return true;
	}

}
