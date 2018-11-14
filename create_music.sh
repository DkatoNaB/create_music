#!/usr/bin/bash

function main()
{
	cd ${HOME}/Music
	link=$1
	out_put_name=$2
	filename=$(youtube-dl --get-filename $link)
	youtube-dl $link
	ffmpeg -i "$filename" -b:a 192k $out_put_name.mp3
	rm $filename
}

if [[ $1 = "e" ]]; then
	vim /home/kappa/scripts/create_music.sh
else
	main $1 $2
fi
