# Matlab Graphical Model Rendering-Engine

[![View GModel on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://nl.mathworks.com/matlabcentral/fileexchange/127079-gmodel)

<img src="./assets/matcap_bluebase.png" alt="Improved color maps" width="125"> <img src="./assets/matcap_bubble.png" alt="Improved color maps" width="125"> <img src="./assets/matcap_egg.png" alt="Improved color maps" width="125"> <img src="./assets/matcap_metal.png" alt="Improved color maps" width="125"> <img src="./assets/matcap_copper.png" alt="Improved color maps" width="125">

<img src="./matcap/img/matcap_512x512_bluesphere.jpg" alt="Improved color maps" width="125"> <img src="./matcap/img/matcap_512x512_soapbubble.jpg" alt="Improved color maps" width="125"> <img src="/matcap/img/matcap_512x512_egg.jpg" alt="Improved color maps" width="125"> <img src="/matcap/img/matcap_512x512_metal.jpg" alt="Improved color maps" width="125"> <img src="/matcap/img/matcap_512x512_copper.jpg" alt="Improved color maps" width="125">

The class `Gmodel` is a graphical rendering engine for triangular mesh model. The class uses the normal vector computed for the triangular faces, to derive the appriopriate texture related to a Material Capture -- also called `matcap`. The tool comes equipped with a brouad collection of materials, including copper, steel, eggshell, jade, matte plastics, and a bunch of common textures used in Computer Graphics. On top of that, using callback function, rotating the model automatically updates the material texture. 

Usage:
```matlab
obj = Gmodel('Bunny.stl') % or any other .stl file
obj.bake.render();        % baking needs to be called at least once, render calls the figure
```

You can also force a texture update by calling
```matlab
obj.update();
```
This can be useful in for-loops.

## Installation
We highly recommend installing the essentials package using the [Matlab Package Manager](https://nl.mathworks.com/matlabcentral/fileexchange/54548-mpm?s_tid=srchtitle) (MPM), which can be easily installed via the Matlab Add-On Mananger ![](https://nl.mathworks.com/help/matlab/matlab_env/add-ons_24x24.png). Once MPM is installed, the essential package can be installed by the following command in the Matlab command window

```bash
mpm install matessentials --all-paths
mpm install gmodel --all-paths
```

This will generate a folder under `MATLAB Add-Ons/Collections/mpm/mobeets-mpm-c626429/mpm-packages/gmodel/`.
