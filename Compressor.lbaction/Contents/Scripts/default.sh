#!/bin/sh
#
# LaunchBar Action Script
#

PATH=/usr/local/bin:$PATH

for ARG in "$@"; do {
	type=$(echo ${ARG##*.} | tr A-Z a-z)
	name=$(basename "$ARG")
	dir=$(dirname "$ARG")
	output="$dir/new-$name"

	case "$type" in
	jpg | jpeg)
		jpegoptim "$ARG" -max=90 --stdout >"$output"
		;;
	png)
		pngquant "$ARG" --quality 70-90 --force --output "$output"
		;;
	gif)
		gifsicle "$ARG" --optimize=3 --interlace --output "$output"
		;;
	*) ;;
	esac
} &
done
