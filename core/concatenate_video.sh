mencoder -oac pcm -ovc copy -idx -of rawvideo -o video.raw video0.mp4 video1.mp4
mencoder video.raw -audiofile sound.mp3 -demuxer rawvideo -force-avi-aspect 1 -rawvideo fps=30:w=512:h=512:format=bgra -oac faac -faacopts br=160:mpeg=4:object=2:raw -channels 2 -srate 48000 -of lavf -lavfopts format=mp4 -ovc x264 -x264encopts crf=15:vbv_maxrate=1500:nocabac:global_header:frameref=3:threads=auto:bframes=0:subq=6:mixed-refs=0:weightb=0:8x8dct=1:me=umh:partitions=all:qp_step=4:qcomp=0.7:trellis=1:direct_pred=auto -o output.mp4