# HTML5 based animated video hints for Blender Tutorials

This project consists of a simple webapp that is built using [Parcel.js](https://parceljs.org/) and that contains tutorial hints designed using HTML and CSS and animated using [GSAP](https://greensock.com/gsap/) (such as instructions and keyboard shortcuts). I built it to create video hints for this Blender Video Tutorial (Creating a colorful sliced landscape structure in Blender).

[html5-animation-video-renderer](https://github.com/dtinth/html5-animation-video-renderer) is used to render the animated hints to `.mov` files. They can than be imported into a video editor and placed above the screen recording.

Example:

![Example image of the animated video hint](images/h2_small.gif)

Hints are created in the [src/index.html](src/index.html) file in the following format:

```html
    <div class="hint" id="h2">
        <div class="top">Double Plane width</div>
        <ol class="steps">
            <li>In <span class="option"><img class="icon" src="/blender-icons/blender-icons/object_data.svg"/>Object Mode</span>, select the plane</li>
            <li>Hit <span class="key">S</span> to scale</li>
            <li>Hit <span class="key">X</span> to limit scaling to X axis</li>
            <li>Type <span class="key">2</span> to double plane width</li>
            <li>Click <span class="mouse lmb">LMB</span> to confirm</li>
        </ol>
    </div>
```

You can see in the example, that I use Blender SVG icons in the code to spice up the hints a bit.

## How to generate videos

1. Update git submodules:

    ```sh
    git submodule update --init --recursive
    ```

2. Install node.js dependencies

    ```sh
    npm install
    cd html5-animation-video-renderer
    npm install
    ```
3. Run parcel webapp

    ```
    npm run start
    ```

    Hints are now available under the URL [http://localhost:1234](http://localhost:1234). You can select specific hints to display using a location hash, for example:

    [http://localhost:1234#h1](http://localhost:1234#h1) will display the hint with the HTML-ID `h1` (The element `<div class="hint" id="h1">...</div>`).
4. Run the `render.sh` script to render out videos (Use Git Bash on Windows). 
Videos will be placed in the `./out` directory. By default, the script will render hints `h1` to `h5`. Edit `render.sh` to change the hints that you want to render.

Alternatively, you can render specific hints using the following command:

```sh
    node html5-animation-video-renderer/render.js --url=http://localhost:1234\#h1--alpha --video=out/h1.mov
```

5. Use the `.mov` files in the `out` directory in your Video Editor. I use Blender VSE. Have fun! 😉