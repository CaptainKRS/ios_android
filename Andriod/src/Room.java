import java.awt.*;

public class Room {
	public int worldWidth = 12;
	public int worldHeight = 10;
	public int blockSize = 36;
	
	public Block[][] block;
	public Block[][] block2;
	
	public Room() {
		define();
		define2();
	}
	
	public void define() {
		block = new Block[worldHeight][worldWidth];
		
		for(int y=0;y<block.length; y++) {
			for(int x=0;x<block[0].length;x++) {
				block[y][x] = new Block((Screen.myWidth/2) - (worldWidth*blockSize/2) + (x * blockSize),(Screen.myHeight/2) -(worldHeight*blockSize/2) + (y * blockSize), blockSize,blockSize,Value.groundGrass,Value.airAir);
				
			}
		}
	}
	public void define2() {
		block2 = new Block[worldHeight][worldWidth];
		
		for(int y=0;y<block2.length; y++) {
			for(int x=0;x<block2[0].length;x++) {
				block2[y][x] = new Block((Screen.myWidth/2) - (worldWidth*blockSize/2) + (x * blockSize), y * blockSize, blockSize,blockSize,Value.groundGrass,Value.airAir);
				
			}
		}
	}
	
	public void physic(){
		
	}
	
	
	public void draw(Graphics g) {
		for(int y=0;y<block.length; y++) {
			for(int x=0;x<block[0].length;x++) {
				block[y][x].draw(g);
			}
		}
		for(int y=0;y<block2.length; y++) {
			for(int x=0;x<block2[0].length;x++){
				block2[y][x].draw(g);
			}
		}
	}
	
}
