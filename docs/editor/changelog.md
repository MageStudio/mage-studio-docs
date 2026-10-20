# Changelog

The editor ships continuously — this changelog groups the highlights by month.

## October 2026

- **Delete assets** — right-click an asset tile and choose **Delete**; deletion is blocked, with a list of what's using it, while the asset is still referenced by the scene or another asset
- **Frozen library blocks** — a block dropped from the library is now a read-only instance linked to its library definition; expand it to view its internals, or choose **Detach from library (make editable)** to turn it back into an ordinary group
- Game preview: switching to a non-start level now loads that level's assets instead of an empty scene
- Copy/paste of the selected element works while a text field has focus, as long as no text is selected
- Asset tiles wrap correctly at any panel width
- Engine updated to `v3.31.1`: levels with spaces or capitals in their names load correctly, and each texture is fetched only once

## September 2026

- **Reorganize toolbar** — with several elements selected, lay them out as a **Grid**, **Line**, **Circle**, or **Arc** with adjustable spacing
- **Boolean node** — a true/false variable node in visual coding
- Fixes: a group's exposed ports accept connections; the Hierarchy panel refreshes when an element is renamed; by-key nodes accept a dynamic string key; arrow keys move the cursor in focused text fields instead of the camera

## August 2026

- **Collision decomposition** — new Collision tab in the asset inspector generates named collision variants from a model (Fast / Balanced / Precise presets), selectable per instance in the physics inspector
- **Model preview** — model assets now render a live clay preview in the asset inspector
- **Visual coding — node groups** — group a selection (`Ctrl/Cmd+G`), collapse/expand it, expose internal handles as named ports, and ungroup (`Ctrl/Cmd+Shift+G`)
- **Visual coding — block library** — save a group as a reusable block, scoped to the project or your whole account, and drag it from the palette's Library section into any script
- **By-key transform nodes** — Get/Set Position, Rotation, Scale, and Quaternion by a string key
- **Multi-select** — `Ctrl/Cmd`/`Shift`-select multiple scene elements, transform them as a group, and batch-reparent them
- Physics inspector adds **Model Shape** and **None** collider types; engine updated to `v3.31.0`

## July 2026

- **Kinematic colliders** — new Kinematic toggle in the physics inspector for movable platforms that carry other bodies
- **World transform editing** — inspector position/rotation fields show and edit world-space values when the World space toggle is active; scale stays local
- **Variable Reference node** — reuse any variable in a visual script without dragging long edges
- Wider zoom-out range for large visual coding graphs
- Fixes: copy/paste preserves geometry and no longer double-pastes; reparenting persists the child's transform correctly
- Engine updated to `v3.28.x`: compound colliders for attached children, reparenting fixes

## June 2026

- **Texture options** — per-texture Repeat, Offset, and Wrapping controls (Repeat / Clamp to edge / Mirrored repeat), with per-axis wrapping via the link/unlink toggle
- **Per-level physics** — Simulation tab settings now reach built and deployed games
- **Cascade delete** — deleting a parent removes its children, with a clear warning dialog

## May 2026

- **Editor UI redesign** — new global header with project/level breadcrumb, floating viewport toolbar, refreshed asset tiles and dropdowns
- **Per-level physics** — new Simulation tab on the level inspector: gravity direction/magnitude with game-feel presets, simulation tick rate, and max substeps

## April 2026

- **Game preview** — play your game inside the editor with real physics, scripts, and controls; includes pause/resume, element inspection, a console overlay, and quality/resolution settings
- **Physics, controls & collision nodes** — Enable/Disable Physics, On Collision, Get Physics State, First/Third Person Control, and more in visual coding
- **Alignment guides** — nodes snap to blue helper lines while dragging in the visual editor
- **Rename entities** — from the inspector or by double-clicking in the hierarchy
- **Auto-save for scripts** — text and visual scripts save automatically a couple of seconds after you stop editing

## March 2026

- **Animations in the editor** — animations inspector tab with per-clip playback, loop toggle, crossfade, speed and weight controls
- **Getting Started tutorial** — a guided tour for first-time users, reopenable from the Help menu
- **In-app issue reporting** — Report issue entry in the Help menu
- **Usage view** — see your plan's storage, deployment, and upload limits from the user dropdown
- **More visual coding nodes** — expanded node catalog with improved inputs
- Sign-in/sign-up fixes and API authentication hardening

## February 2026

- **Lights inspector** — complete controls for all light types, including shadows
- **Particle & effects inspectors** — full editing for Fire, Explosion, Trail, Rain, Snow, Fountain, plus scenery effects
- **Undo/redo** — `Ctrl/Cmd+Z` / `Ctrl/Cmd+Shift+Z` for transform edits
- **Hierarchy search** — filter the scene tree by name
- **Drag-and-drop reparenting** — restructure the hierarchy directly
- **Improved visual coding palette** — categorized, searchable node list with better styling
- Large entity configurations no longer fail to save (413 errors fixed)
