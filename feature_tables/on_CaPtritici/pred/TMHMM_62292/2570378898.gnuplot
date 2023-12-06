set arrow from 1,1.07 to 301,1.07 nohead lt 3 lw 10
set arrow from 302,1.09 to 324,1.09 nohead lt 1 lw 40
set arrow from 325,1.11 to 398,1.11 nohead lt 4 lw 10
set arrow from 399,1.09 to 419,1.09 nohead lt 1 lw 40
set arrow from 420,1.07 to 431,1.07 nohead lt 3 lw 10
set arrow from 432,1.09 to 454,1.09 nohead lt 1 lw 40
set arrow from 455,1.11 to 457,1.11 nohead lt 4 lw 10
set arrow from 458,1.09 to 480,1.09 nohead lt 1 lw 40
set arrow from 481,1.07 to 564,1.07 nohead lt 3 lw 10
set arrow from 565,1.09 to 587,1.09 nohead lt 1 lw 40
set arrow from 588,1.11 to 602,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378898"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:602]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378898.eps"
plot "./TMHMM_62292/2570378898.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
