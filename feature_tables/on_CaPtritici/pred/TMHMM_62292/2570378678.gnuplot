set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 40,1.09 nohead lt 1 lw 40
set arrow from 41,1.11 to 388,1.11 nohead lt 4 lw 10
set arrow from 389,1.09 to 411,1.09 nohead lt 1 lw 40
set arrow from 412,1.07 to 431,1.07 nohead lt 3 lw 10
set arrow from 432,1.09 to 454,1.09 nohead lt 1 lw 40
set arrow from 455,1.11 to 468,1.11 nohead lt 4 lw 10
set arrow from 469,1.09 to 489,1.09 nohead lt 1 lw 40
set arrow from 490,1.07 to 534,1.07 nohead lt 3 lw 10
set arrow from 535,1.09 to 557,1.09 nohead lt 1 lw 40
set arrow from 558,1.11 to 566,1.11 nohead lt 4 lw 10
set arrow from 567,1.09 to 589,1.09 nohead lt 1 lw 40
set arrow from 590,1.07 to 604,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378678"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:604]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378678.eps"
plot "./TMHMM_62292/2570378678.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
