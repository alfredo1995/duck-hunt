<h2> Game inspired by Duck Hunt, with target shooting mechanics, animations and turn system, using the GDScript scripting language for the Godot </h2>

<br>
 
https://github.com/alfredo1995/duck-hunt-godot/assets/71193893/1e2bb0b9-77e1-4ac6-b1c9-667827b055f8

<br> 

CONTROLS

    Shoot: Use the mouse to aim and shoot enemies.

> https://alfredo1995.itch.io/duck-hunt-godot

<br>
<br>

At Godot, practically everything is a Node. A node can represent a sprite, an animation, a sound

    Name: Each node has a name so it can be called;

    Properties: every node has a set of properties that define how it behaves, its appearance, etc.;

    Callback: each node has a callback function that can be processed every frame;

    Extandable: using code, any node can gain additional properties and functionalities;

    Another fundamental property of Nodes is that they can be associated with other nodes as “children”, creating a tree structure:

    In a tree structure like the image above, each node can have only one “parent” and any number of children. A node can inherit properties from its parent node, allowing you to organize them in a logical order.

    A group of nodes organized as a tree is called a Scene (“scene”). In Godot, scenes can be saved, loaded, duplicated and can even give rise to other scenes.

    In this context, running the game means running the scene. All your work in the Godot editor will be creating and organizing scenes.

    Programming languages and Visual Scripting

    Some previous versions of the engine were based on languages such as Lua, Python and Squirrel, but they did not prove to be very efficient. To solve some problems, Godot started to have a custom scripting language, known as GDScript.

