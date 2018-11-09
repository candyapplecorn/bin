#!/bin/bash

percent=85
prepercent=$((100 - $percent))
fps=2
blur=4

if [[ $1 = ''  ]]; then
	echo 'Must have input image.'
	exit 1
else
	input=$1
	baseDir=${1%/*}
	fileName=${1##*/}
	xfext=${fileName##*.}
	output=${fileName%.*}
fi;

function randBetween { echo $(($RANDOM % $1 + 1));  }

function generateTheGif {
	echo "Generating the gif..."

	for i in `seq 16`; do
		convert $input -crop "$percent"x"$percent"%+`randBetween $prepercent`%+`randBetween $prepercent`%! temp_pic_"$i".png;
		convert temp_pic_"$i".png -blur 0x"$blur" temp_pic_blurred_"$i".png
	done;

	convert -delay "$fps"x100 temp_pic_blurred_*png $baseDir/$output.gif

	echo "...Done!"

	rm temp_pic_*.png
}

function viewIt { google-chrome $baseDir/$output.gif  2>&1 >/dev/null; }




generateTheGif

viewIt

