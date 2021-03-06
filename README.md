# foid - fundamantals on image processing
---

# about

This is an open project to summarise some fundamentals on image processing
using GNU Octave. The goal is to get some basic theory and example code to
use for short workshops in the OpenSource Club LuXeria.

# status

The project is in the initial phase. Next steps are
* install needed software packages
* prepare a wiki page
* prepare a LaTeX document
* organise literature

# list of topics
- [ ] installing GNU Octave
- [ ] GNU Octave fundamentals
- [ ] installing the image package
- [x] reading and writing images
- [x] reading pixel data
- [x] statistical analysis of pixel values (histogram)
- [x] quantization of image data
- [x] rasterization of image data
- [x] dot-based image manipulation using LUT (look up table)
* more topics will follow ...

# getting image data

To get the image data run the Bash script [get_data.sh](./data/get_data.sh).
It will download all images needed for all the examples in this repository.

# FAQ

* How to start GNU Octave without the GUI?
    * Just start it with ''octave --no-gui''
