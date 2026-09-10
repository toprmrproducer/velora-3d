VÉLORA — interactive 3D puffer site
===================================

LIVE:  https://toprmrproducer.github.io/velora-3d/
REPO:  https://github.com/toprmrproducer/velora-3d

RUN LOCALLY
  Double-click  serve.command   (local server + opens the browser)
  or:  python3 -m http.server 8777   ->  http://localhost:8777
  A local server is needed because browsers block loading the .glb from file://.

WHAT'S INSIDE
  index.html        the whole site (Three.js r160 via CDN import map)
  assets/puffer.glb Meshy "Electric Blue Puffer", compressed 121MB -> 6.8MB
                    (EXT_meshopt_compression + WebP textures + mesh quantization)
  assets/bg.mp4     looping video used as the full-bleed backdrop

INTERACTION
  - Drag             rotate the jacket (orbit)
  - Move the mouse   "cool breeze" — the open front panels peel apart and flutter,
                     strength follows pointer speed; keeps breathing at rest
  - Scroll           subtle zoom
  - Mobile           tap ENABLE MOTION -> gyroscope tilts the jacket and steers the wind

NOTES
  - The GLB is one mesh with no separate zipper/flap parts. The "flaps flying" is a
    wind vertex shader (onBeforeCompile) that targets the front-centre edge + hem.
  - Framing is aspect-aware: wide screens push the jacket right of the headline,
    narrow/portrait screens centre it so it never crops.
  - To re-compress after swapping the model:
    npx @gltf-transform/cli optimize in.glb assets/puffer.glb --compress meshopt --texture-compress webp --texture-size 2048
