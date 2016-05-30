package com.cubyk.game;


import com.badlogic.gdx.Game;

import Screens.SplashScreen;
import ZLHelpers.AssetLoader;


public class ZombieLand extends Game {

	@Override
	public void create() {
		AssetLoader.load();
		setScreen(new SplashScreen(this));
	}

	@Override
	public void dispose() {
		super.dispose();
		AssetLoader.dispose();
	}

}