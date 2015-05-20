package states;
import luxe.Sprite;
import luxe.Input;
import luxe.States;
import luxe.Color;
import luxe.Vector;
import luxe.Camera;

import C;

class Play extends State {

	// This is your main gameplay state and should totally be in your control
	// All callbacks from luxe.Game are also available here

	var block: Sprite;

	override public function onenter<T> (_:T) {

		block = new Sprite({
			name: 'default testing sprite',
			pos: Luxe.screen.mid,
			color: new Color().rgb(0xf94b04),
			size: new Vector(128, 128)
			});
	}

	override public function update(dt: Float) {
		block.rotation_z += C.rotate_speed * dt;
	}

	override public function onleave<T> (_:T) {
		block.destroy();
	}

	override function onmousemove( event: MouseEvent) {
		block.pos = Luxe.camera.screen_point_to_world(event.pos);
	}

	override function onkeyup( e:KeyEvent ) {
		//escape from the game at any time, mostly for debugging purpose
		if(e.keycode == Key.escape) {
			Luxe.shutdown();
		}
	}
}
