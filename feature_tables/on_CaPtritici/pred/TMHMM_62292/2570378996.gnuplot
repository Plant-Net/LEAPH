set arrow from 1,1.11 to 3,1.11 nohead lt 4 lw 10
set arrow from 4,1.09 to 26,1.09 nohead lt 1 lw 40
set arrow from 27,1.07 to 54,1.07 nohead lt 3 lw 10
set arrow from 55,1.09 to 77,1.09 nohead lt 1 lw 40
set arrow from 78,1.11 to 123,1.11 nohead lt 4 lw 10
set arrow from 124,1.09 to 146,1.09 nohead lt 1 lw 40
set arrow from 147,1.07 to 152,1.07 nohead lt 3 lw 10
set arrow from 153,1.09 to 175,1.09 nohead lt 1 lw 40
set arrow from 176,1.11 to 194,1.11 nohead lt 4 lw 10
set arrow from 195,1.09 to 217,1.09 nohead lt 1 lw 40
set arrow from 218,1.07 to 234,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378996"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:234]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378996.eps"
plot "./TMHMM_62292/2570378996.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
