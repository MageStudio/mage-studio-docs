# FAQ

## What is Mage?

Mage Studio includes the Engine and the Editor, and is used to create 3D games and applications. Support for 2D is currently limited. See the [home page](/) for an overview.

## What's the difference between the engine and the editor?

The engine is a JavaScript game engine built on top of THREE and Ammojs, and it is what you use to build interactive 3D applications. The editor is a visual editor for building and designing 3D scenes, and it is currently under heavy development. See the [Engine docs](/engine/) and the [Editor docs](/editor/).

## How do I install the engine?

Run `npm install --save mage-engine@latest` in your project. See the [installation guide](/engine/getting-started/installing-mage-engine).

## How do I deploy a game?

Create a production build, which outputs your files to the `dist/` folder, then host it on any static file server, since Mage applications are client-side only. Some features require HTTPS in production, so make sure your host supports it. See the [deploy guide](/engine/advanced/deploy).

## Where can I get help?

Join the [Mage Discord server](https://discord.gg/NR5ZDGFG5j) to get in touch, or raise an issue on [GitHub](https://github.com/MageStudio/Mage).
