# HTML5 based video hints for Blender Tutorials

This project consists of a [Parcel.js](https://) Web App that contains tutorial hints designed using HTML and CSS and animated using [GSAP](https://) (such as instructions and keyboard shortcuts) that I used for this Blender Video Tutorial (Creating a colorful sliced landscape structure in Blender).

[html5-animation-video-render](https://) is used to render the animated hints to `.mov` files. They can than be imported into a video editor and placed above the screen recording.

Example:



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

You can see in the example, that I use Blender SVG Icons 

## How to run

1. Update git submodules:

    ```sh
    git submodule update
    ```

2. Install node.js dependencies

    ```sh
    npm install
    ```
3. Run parcel webapp

    ```
    npm run start
    ```

    Hints are now available under the URL [http://localhost:1234](http://localhost:1234). You can select specific hints to display using a location hash, for example:

    [http://localhost:1234#h1](http://localhost:1234#h1) will display the hint with the HTML-ID `h1`.
4. Run the `render.sh` script to render out videos. Videos will be placed in the `./out` directory.