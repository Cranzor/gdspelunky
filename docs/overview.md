# Project Overview
This document lays out the project structure and how the game operates.

## From GameMaker to Godot
The original game utilizes objects, rooms, and sprites. Objects are any type of entity like items or characters (similar to a node). Rooms are roughly equivalent to a scene, as in a level scene that you would transition to in Godot. Sprites function similar to AnimatedSprite2D.

In the original engine's file structure, each object has an XML file with its necessary data. These have all been put into [this giant dictionary](/resources/objects.gd) to use when setting up objects. There is an equivalent file for [sprites](/resources/sprites.gd) (you can ignore most of the collision information, because it's using an old system).

To see how this information gets turned into a node in Godot, check the [all_objects_sprite_setup](/tools/all_objects_sprite_setup.gd) file and the [corresponding scene](/tools/all_objects_sprite_setup.tscn), the latter of which sets up all objects at once. (Note that the file name needs updating. It actually sets up the entire object and not just the sprite.)

### GMObject
Objects are in the [GMObject](/resources/gm_object.gd) class. Due to experiments with collision early on, these are StaticBody2Ds, and they were just never changed over to another node (Node2D would probably be more fitting).

This class handles most of the default variables that the original engine has, as well as just being a general helper class for objects.

All objects are stored in the "objects" folder, each having a scene and script file.

### GML
[This class](/resources/gml.gd) contains recreations of methods from the original engine based on reading documentation, observation, and trial and error. This way, object scripts can keep the same code and even call the same methods as before.

## Initialization
The game first loads the [GameInitialization](/scripts/game_initialization.gd) autoload, which does the following:

- Loads the game's save from [SavingLoading](/scripts/saving_loading/saving_loading.gd)
- Loads the user's settings (also from [SavingLoading](/scripts/saving_loading/saving_loading.gd))
- Begins loading in all objects from [LoadObjects](/tools/load_all_objects.gd)

## Main Loop
After most autoloads finish loading, the game moves into [GmLoop](/resources/gm_loop.gd) (also an autoload). This is where the entire game runs.

The gm_loop() function runs once per physics frame, which is set to 30 FPS (same as the original game). The function itself mimics the order of the original engine (based on documentation). Note that the order here was accomplished partly through trial and error, so things may be organized in a messy way, and there is some legacy code left over.

Objects are called based on groups to reduce the number of calls. For example, only objects in the draw_object group are called to run the draw function.

Note that "step" is equivalent to "_physics_process()" in Godot and gets called once per physics frame. Most of the code that runs in the game is from each object's step event. Objects also run "create" when they are first created (similar to _ready()).

## Other Systems
There are a few other systems that the game uses that I will briefly introduce below.

### UI
Most of the UI has been moved over to the [HUD](/scenes/ui/hud.tscn) scene, which offers more flexibility than running things like how the original game does, which sets positions with exact coordinates (making things tricky for other aspect ratios).

### Camera
The [View](/resources/view.gd) class recreates the original engine's camera behavior. It also is set up to be smoother when interpolation is enabled.

### Interpolation
This is what allows the game to run at more than 30 FPS. The logic of the game is always set to 30, but the sprites continue moving between game ticks to make things smoother. This is handled in the [SmoothMotion](/components/smooth_motion.gd) class.

Basically, the way that it works is it checks the position of the object each frame, and then it tweens the sprite to whatever the next position will be. This means that the position is always one frame behind the object's actual position (due to being interpolation and not extrapolation).

(I tried using Godot's built in physics interpolation, but was getting hitching and other unwanted behavior.)

### Collision
The way that the original engine and Godot handle collision are very different. In GameMaker, you can check an arbitrary location at any point in the frame and get an accurate result. In Godot, typically nodes only check against each other, and only once per frame. The two systems are completely different, so because of this, I opted to make my own collision system, found in the [custom_collision](/collision/custom_collision.gd) script.

This uses a spatial hashing system, in which objects are each assigned to cells on a grid. When checking for a collision, only nearby cells are checked, which makes things efficient as not every object has to be checked against one another.

Note that collision is simplified at the moment. Collision shapes do not update when a sprite changes, whereas they do in the original engine.

There are also some remnants left over from when I was trying to use Godot's built-in collision. The "collision with" GameMaker system (called once per frame in [GmLoop](/resources/gm_loop.gd)) actually still uses this system. (See the run_collision_with() function in [GMObject](/resources/gm_object.gd).)
