package;

import luxe.States;
import states.Play;
import states.Splash;

class Main extends luxe.Game {

	var initialState:String = 'splash'; // First state to run, in string (luxe.States.State.name), refer to state's file

	public static var state: States;

	override function config(config:luxe.AppConfig):luxe.AppConfig {

		// Preloading textures, optional
		config.preload.textures = [
			{id: 'assets/logo_box.png'}
		];

		return config;
	}

	override function ready() {

		// Create a state machine [...]
		state = new States( { name: "states" } );

		// Add states to the state machine
		state.add (new Play());
		state.add (new Splash());

		// Set the inital state upon running the game
		state.set(initialState);

	}

}
