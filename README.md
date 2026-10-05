### NiceDamage
* **Description:** Customizes the visual style, size, and appearance of combat text (damage and healing numbers) floating in the 3D game world for the 2.5.3 client.
* **How to Use:**
  1. Place your preferred `.ttf` font file inside the addon directory, and replace default one `Expressway.ttf`.
* **Known Issues & Gotchas:**
  * **Client Relog Requirement:** Changing font files or base font assets requires logging out completely to the character selection screen. A simple `/reload` will not apply 3D font asset modifications due to engine limitations.
  * **UI Overhaul Conflicts:** Comprehensive UI suites like ElvUI often override combat fonts by default. You must either disable ElvUI's combat text font module or explicitly point ElvUI to use the font registered by NiceDamage.
