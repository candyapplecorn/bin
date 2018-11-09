# Angry Gif Maker

### Given an input image:
![assets/redstart.png](assets/redstart.png)

### Get an angry gif:

![assets/out5.gif](assets/out5.gif)


```bash
$ bash gifMaker.sh ~/Pictures/wearelegion.png
```
## Install
It's a bash script. Have bash. Also, you need [imagemagick](https://www.imagemagick.org/script/index.php)'s command line interface installed.
* __Mac__: `brew install imagemagick`
* __Linux__: You're using Linux, _figure it out_.
* __Windows__: lol



## Usage
```bash
$ bash gifMaker.sh assets/redstart.png
# Produces the output gif assets/redstart.gif
```

##### Todo:
* Make a filter that can turn the input image red, like the image used here.
* Make a filter than can "bake" the input image, similar to the one used here.
* Make a fish-eye distortion filter that blurs the outer area of the input image.
* Make all the different features toggleable CLI options with configurable values.

###### Background
Originally I was going to make a node script to do this, but in the process of reading the imagemagick docs, went and made a bash script instead. Argument handling in bash sucks though so I might turn this into a node script or even globally installable CLI tool someday. Because being able to make angry gifs is too valuable not to be able to do.
