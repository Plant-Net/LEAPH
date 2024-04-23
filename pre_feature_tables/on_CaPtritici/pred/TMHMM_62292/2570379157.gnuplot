set arrow from 1,1.07 to 60,1.07 nohead lt 3 lw 10
set arrow from 61,1.09 to 79,1.09 nohead lt 1 lw 40
set arrow from 80,1.11 to 88,1.11 nohead lt 4 lw 10
set arrow from 89,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.07 to 251,1.07 nohead lt 3 lw 10
set arrow from 252,1.09 to 269,1.09 nohead lt 1 lw 40
set arrow from 270,1.11 to 288,1.11 nohead lt 4 lw 10
set arrow from 289,1.09 to 311,1.09 nohead lt 1 lw 40
set arrow from 312,1.07 to 707,1.07 nohead lt 3 lw 10
set arrow from 708,1.09 to 730,1.09 nohead lt 1 lw 40
set arrow from 731,1.11 to 739,1.11 nohead lt 4 lw 10
set arrow from 740,1.09 to 762,1.09 nohead lt 1 lw 40
set arrow from 763,1.07 to 789,1.07 nohead lt 3 lw 10
set arrow from 790,1.09 to 812,1.09 nohead lt 1 lw 40
set arrow from 813,1.11 to 816,1.11 nohead lt 4 lw 10
set arrow from 817,1.09 to 839,1.09 nohead lt 1 lw 40
set arrow from 840,1.07 to 851,1.07 nohead lt 3 lw 10
set arrow from 852,1.09 to 874,1.09 nohead lt 1 lw 40
set arrow from 875,1.11 to 888,1.11 nohead lt 4 lw 10
set arrow from 889,1.09 to 906,1.09 nohead lt 1 lw 40
set arrow from 907,1.07 to 918,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379157"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:918]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379157.eps"
plot "./TMHMM_62292/2570379157.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
