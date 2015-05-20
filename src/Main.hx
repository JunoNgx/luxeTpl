package;

import luxe.Screen.WindowEvent;
import luxe.Vector;
import luxe.Color;

import luxe.States;
import states.Play;
import states.Splash;

class Main extends luxe.Game {

	// Optional values,
	// useful when game does not fully cover the
	// entire screen, great to use when
	// Luxe.camera.size_mode == SizeMode.fit
	// public static var w: Int = 480;
	// public static var h: Int = 640;

	var initialState:String = 'splash'; // First state to run, in string (luxe.States.State.name), refer to state's file
	var showCursor:Bool = true; // Quick setting, whether to display system cursor in-game, useful for custom cursor or certain genres of action games

	public static var state: States;

	override function config(config:luxe.AppConfig):luxe.AppConfig {

		// Preloading resources
		// Resources in Luxe are generally required
		// to be pre-loaded before used
		config.preload.textures = [
			{id: 'assets/logo_box.png'}
		];

		return config;
	}

	// Scale camera's viewport accordingly when game is scaled, common and suitable for most games
	override function onwindowsized( e:WindowEvent ) {
        Luxe.camera.viewport = new luxe.Rectangle( 0, 0, e.event.x, e.event.y);
    }

	override function ready() {

		// Optional, set a consistent scale camera mode for the entire game
		// this is a luxe's wip feature
		// Luxe.camera.size = new Vector(Main.w, Main.h);
		// Luxe.camera.size_mode = SizeMode.fit;

		// Optional, set customized background color
		// Luxe.renderer.clear_color = new Color().rgb(0xD7D7D7);

		// Actual codes that hide/show the cursor
		Luxe.screen.cursor.visible = showCursor;

		// Create a state machine
		state = new States( { name: "states" } );

		// Add states to the state machine
		state.add (new Play({name: 'play'}));
		state.add (new Splash({name: 'splash'}));

		// Run the inital state upon running the game
		state.set(initialState);

	}

}
