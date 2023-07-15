# Project_Xen

Godot project codepen Project Xen

## Info
  *  Godot 3.5 version was choosen, since it is more stable
  *  GLES2 currently in use, better performance, less graphic capabilities, might consider GLES3 aswell.

## Current Tasks
  *  Familiarize with the engine, read docs
  *  Basic tutorials, research features
  *  Research JSON scope and Sprite loading
  *  Work on Skin Selector, delete and update skins (only states, not images)
  *  Research multiplayer connection features, native performance, web performance, etc.

## Current Capabilities

  *  Main Menu:
     *  Menu Buttons work

  *  Skin Creator:
     *  You can create a new Skin and save it as JSON file!
    
  *  Skin Selector:
     *  It loads all the Skins saved as Labels with the JSON files data

## How to test in your pc

  *  Install Godot 3.5 (Not quite sure if it works with latest versions)
  *  Move to your Desktop folder or wherenever you want to run the project
  *  From shell (Linux) / powerShell (windows), execute `git init`
  *  Then execute `git clone https://github.com/Imitelis/Project_Xen`
  *  Open Godot and import the project
  *  Select GLES2 in the upper right (not sure if neccesarily)
  *  Go to Editor tab, then Editor Settings and enable interface > scene tabs > restore scenes on load
  *  Run the play button to see how it is going :P

## Folders (good practices)

  *  **Scenes**: This folder contains all the scenes of your game, such as levels, menus, and UI screens. Organize them into subfolders based on their purpose or category.

  *  **Scripts**: This folder holds all your game scripts. You can organize them based on functionality, such as player scripts, enemy scripts, input handling, etc. It's a good idea to use subfolders if your project becomes large.

  *  **Resources**: This folder is for non-code assets like images, audio files, fonts, and 3D models. Create subfolders based on asset type (e.g., textures, sounds, fonts) or based on the area of the game they belong to (e.g., characters, environment). This structure makes it easy to locate and manage your game assets.

  *  **Settings**: Keep project-specific settings and configuration files here, such as input mappings, game settings, or localization files. These can include Godot project files (e.g., .tscn, .tres) or custom configuration files (e.g., .gdconfig).

  *  **Modules**: If you're using custom modules, plugins, or third-party libraries, store them in this folder. Keeping them separate from the rest of your project's code can help with organization and version control.

  *  **Export**: This folder is automatically created when you export your game for distribution. It contains the exported binaries and assets specific to each target platform.

  *  **Tests**: If you have automated tests for your project, you can create a separate folder to store them. This folder can include unit tests, integration tests, or any other testing-related scripts or assets.

  *  **Documentation**: It's useful to have a folder dedicated to documentation and design materials, such as concept art, game design documents, or reference materials. This can help you and your team keep track of important information about your project.
