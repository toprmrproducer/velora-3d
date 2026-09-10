VÉLORA — interactive 3D puffer site
===================================

RUN IT
  Double-click  serve.command   (starts a local server + opens the browser)
  or in Terminal:  cd velora-3d && python3 -m http.server 8777  ->  http://localhost:8777

  A local server is required: browsers block loading the .glb from a file:// path.

WHAT'S INSIDE
  index.html        the whole site (Three.js via CDN import map)
  assets/puffer.glb your Meshy "Electric Blue Puffer" model (121 MB, single mesh)
  assets/bg.mp4     the looping video used as the full-bleed backdrop

INTERACTION
  - Drag                rotate the jacket (orbit)
  - Move the mouse      "cool breeze" — the open front panels peel apart and flutter,
                        strength follows how fast you move; it keeps breathing at rest
  - Scroll              subtle zoom
  - Mobile              tap ENABLE MOTION -> gyroscope tilts the jacket and steers the wind

NOTES
  - The GLB is one solid mesh with no zipper/flap parts, so the "flaps flying" is done
    with a wind vertex shader that targets the front-centre edge and the hem.
  - 121 MB is heavy for a real site. Next step if you want it web-ready: compress with
    gltf-transform (Draco + WebP textures) -> usually 6-15 MB. Say the word.
