# Luxe Engine Template
A state-centric template for the [Luxe Engine](http://luxeengine.com/), heavily influenced by [HaxeFlixel](http://haxeflixel.com/) template, in attempt to assist for a smoother transitition from newcomers from other frameworks/engines.

**Luxe Engine** is far from final, and so is this template. This template is a work-in-progress and will be updated as **Luxe** being developed towards a final status.

# Content
~~* Basic window size and resizability configurations in ```Main.hx```~~
* Quick window settings in ```project.flow```
* Minimal and simple splash screen
* A basic hello world gameplay state
* ```project.flow``` guide comments
* Optional ```custom_index.html``` for fullscreen HTML5.

# Camera scale mode

Luxe provides a work-in-progress ```camera_scale``` feature, which is useful to handling multiple resolution ratio. In this template, this is defined in ```ready()``` callback in ```Main.hx``` (currently commented):

```
Luxe.camera.size = new Vector(Main.w, Main.h);
Luxe.camera.size_mode = SizeMode.fit;
```

The process is demonstrated in [```tests/wip/camera_scale```](https://github.com/underscorediscovery/luxe/tree/master/tests/wip/camera_scale)

# 

# Fullscreen HTML5

To make a game run in fullscreen HTML5 (ideal for mobile), add the commented ```property``` in ```files``` node of ```project.flow```. This will order ```flow``` to use a customized ```index.html``` file for HTML5 build. It would look something like:

```
files : {
      config : 'config.json',
      assets : 'assets/',
      index : { path:'custom_index.html => index.html', template:'project', not_listed:true }
}

```

The process is demonstrated in ```Luxe```'s [test of ```TouchEvents```](https://github.com/underscorediscovery/luxe/tree/master/tests/features/touch_events) (at ```tests/features/touch_events```).

# Closing

Feedback are appreciated and welcomed.