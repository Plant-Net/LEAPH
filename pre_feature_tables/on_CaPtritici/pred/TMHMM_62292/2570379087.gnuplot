set arrow from 1,1.07 to 46,1.07 nohead lt 3 lw 10
set arrow from 47,1.09 to 69,1.09 nohead lt 1 lw 40
set arrow from 70,1.11 to 73,1.11 nohead lt 4 lw 10
set arrow from 74,1.09 to 91,1.09 nohead lt 1 lw 40
set arrow from 92,1.07 to 219,1.07 nohead lt 3 lw 10
set arrow from 220,1.09 to 242,1.09 nohead lt 1 lw 40
set arrow from 243,1.11 to 261,1.11 nohead lt 4 lw 10
set arrow from 262,1.09 to 284,1.09 nohead lt 1 lw 40
set arrow from 285,1.07 to 615,1.07 nohead lt 3 lw 10
set arrow from 616,1.09 to 638,1.09 nohead lt 1 lw 40
set arrow from 639,1.11 to 652,1.11 nohead lt 4 lw 10
set arrow from 653,1.09 to 670,1.09 nohead lt 1 lw 40
set arrow from 671,1.07 to 688,1.07 nohead lt 3 lw 10
set arrow from 689,1.09 to 711,1.09 nohead lt 1 lw 40
set arrow from 712,1.11 to 720,1.11 nohead lt 4 lw 10
set arrow from 721,1.09 to 740,1.09 nohead lt 1 lw 40
set arrow from 741,1.07 to 746,1.07 nohead lt 3 lw 10
set arrow from 747,1.09 to 769,1.09 nohead lt 1 lw 40
set arrow from 770,1.11 to 783,1.11 nohead lt 4 lw 10
set arrow from 784,1.09 to 801,1.09 nohead lt 1 lw 40
set arrow from 802,1.07 to 816,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379087"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:816]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379087.eps"
plot "./TMHMM_62292/2570379087.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
