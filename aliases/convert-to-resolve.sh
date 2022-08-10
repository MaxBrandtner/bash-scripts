#a simple script to convert videos to a format that is comatible with davinci resolve on linux


ffmpeg -i $1 -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a pcm_s16le -f mov $2

#ffmpeg -i input.mp4 -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a pcm_s16le -f mov output.mov
# $1 = input file(include parent directory)
# $2 = output file(include parent directory)
