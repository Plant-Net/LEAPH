set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.11 to 46,1.11 nohead lt 4 lw 10
set arrow from 47,1.09 to 69,1.09 nohead lt 1 lw 40
set arrow from 70,1.07 to 73,1.07 nohead lt 3 lw 10
set arrow from 74,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.11 to 114,1.11 nohead lt 4 lw 10
set arrow from 115,1.09 to 134,1.09 nohead lt 1 lw 40
set arrow from 135,1.07 to 145,1.07 nohead lt 3 lw 10
set arrow from 146,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.11 to 225,1.11 nohead lt 4 lw 10
set arrow from 226,1.09 to 248,1.09 nohead lt 1 lw 40
set arrow from 249,1.07 to 280,1.07 nohead lt 3 lw 10
set arrow from 281,1.09 to 303,1.09 nohead lt 1 lw 40
set arrow from 304,1.11 to 312,1.11 nohead lt 4 lw 10
set arrow from 313,1.09 to 332,1.09 nohead lt 1 lw 40
set arrow from 333,1.07 to 362,1.07 nohead lt 3 lw 10
set arrow from 363,1.09 to 385,1.09 nohead lt 1 lw 40
set arrow from 386,1.11 to 394,1.11 nohead lt 4 lw 10
set arrow from 395,1.09 to 412,1.09 nohead lt 1 lw 40
set arrow from 413,1.07 to 456,1.07 nohead lt 3 lw 10
set arrow from 457,1.09 to 479,1.09 nohead lt 1 lw 40
set arrow from 480,1.11 to 514,1.11 nohead lt 4 lw 10
set arrow from 515,1.09 to 537,1.09 nohead lt 1 lw 40
set arrow from 538,1.07 to 538,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93337.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:538]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93337.1.eps"
plot "./TMHMM_278092/USQ93337.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
