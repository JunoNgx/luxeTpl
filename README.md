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

# App icon

```project.app.icon``` designate the path to icon files (please refer to each respective platform for further details) in format ```folder_name => file_mame_in_platform_folders```.

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

# Android stuff

This template is noticably more Android-centric as this is currently my platform of choice. However, this shouldn't affect developers targeting any other platforms. Feel free to go through [my writeup on snowkit.org](http://snowkit.org/2015/08/10/what-i-learned-and-what-you-should-know-about-luxe-on-android/).

```flow.build.android``` is currently removed in view of a reliable setup method for luxe. Refer to [my post on snowkit.org](http://snowkit.org/2015/08/10/what-i-learned-and-what-you-should-know-about-luxe-on-android/).

* ```project.build.number```: this property designates the version number of the build as an integer in ```AndroidManifest.xml```. This is especially important when updating a previously released build.

* ```build.files.keystore_things```: path leading to file containing keystore passwords. Optional, but recommended with care in view of security (to be signed with ```jarsign``` manually yourself otherwise).

* ```if```: conditional node. Use ```flow build android --d android_release``` to build with these properties for a public release, using designated keystore and corresponding alias. The release build also remove debug console (which is toggable with a four-point-touch).

# Others

Currently a place holder for now.

# Closing

Feedback are appreciated and welcomed.