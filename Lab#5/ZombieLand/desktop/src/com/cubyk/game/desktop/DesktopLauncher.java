package com.cubyk.game.desktop;

import com.badlogic.gdx.backends.lwjgl.LwjglApplication;
import com.badlogic.gdx.backends.lwjgl.LwjglApplicationConfiguration;
import com.cubyk.game.ZombieLand;

public class DesktopLauncher {
	public static void main(String[] args) {
		LwjglApplicationConfiguration cfg = new LwjglApplicationConfiguration();
		cfg.title = "ZombieBird";
		cfg.width = 1080 / 3;
		cfg.height = 1920 / 3;

		new LwjglApplication(new ZombieLand(), cfg);
	}
}
