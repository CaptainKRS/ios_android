import java.awt.*;
import javax.swing.*;
import java.awt.image.*;
import javax.swing.JPanel;
import java.io.*;

public class Screen extends JPanel implements Runnable {
	public Thread thread = new Thread(this);
	
	public static Image[] tileset_ground = new Image[100];
	public static Image[] tileset_air =  new Image[100];
	
	public static int myWidth, myHeight;
	
	public static boolean isFirst = true;
	
	public static Room room;
	
	//public static Save save;
	
	
	public Screen() {
		thread.start();
		
	}
	
	public void define() {
		room = new Room();
		//save = new Save();
		
		for(int i=0;i<tileset_ground.length;i++) {
			tileset_ground[i] = new ImageIcon("res/tileset_ground.jpg").getImage();
			tileset_ground[i] = createImage(new FilteredImageSource(tileset_ground[i].getSource(), new CropImageFilter(0, 36 *i,36,36)));
	}
		for(int i=0;i<tileset_air.length;i++) {
			tileset_air[i] = new ImageIcon("res/tileset_air.jpg").getImage();
			tileset_air[i] = createImage(new FilteredImageSource(tileset_air[i].getSource(), new CropImageFilter(0, 36 *i,36,36)));
	}
		//save.loadSave(new File("save.mission1.kirk"));
		
	}
	
	public void define2() {
		room = new Room();
		//save = new Save();
		
		for(int i=0;i<tileset_ground.length;i++) {
			tileset_ground[i] = new ImageIcon("res/tileset_ground.jpg").getImage();
			tileset_ground[i] = createImage(new FilteredImageSource(tileset_ground[i].getSource(), new CropImageFilter(0, 36 *i,36,36)));
	}
		for(int i=0;i<tileset_air.length;i++) {
			tileset_air[i] = new ImageIcon("res/tileset_air.jpg").getImage();
			tileset_air[i] = createImage(new FilteredImageSource(tileset_air[i].getSource(), new CropImageFilter(0, 36 *i,36,36)));
	}
		//save.loadSave(new File("save.mission1.kirk"));
		
	}
	
	
	public void paintComponent(Graphics g) {
		if(isFirst) {
			myWidth = getWidth();
			myHeight = getHeight();
			define();
			define2();
			
			isFirst = false;
		}
		
		g.clearRect(0, 0, getWidth(), getHeight());
		
		room.draw(g); // drawing the room
	}
		
	
	public void run() {
		while(true) {
			if(isFirst) {
				room.physic();
				
			}
			
			repaint();
			
			try {
			Thread.sleep(1);
			
			} 
			
			catch(Exception e) {}
		}
	}
}