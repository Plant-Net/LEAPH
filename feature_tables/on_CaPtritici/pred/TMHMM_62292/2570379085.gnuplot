set arrow from 1,1.07 to 21,1.07 nohead lt 3 lw 10
set arrow from 22,1.09 to 44,1.09 nohead lt 1 lw 40
set arrow from 45,1.11 to 53,1.11 nohead lt 4 lw 10
set arrow from 54,1.09 to 76,1.09 nohead lt 1 lw 40
set arrow from 77,1.07 to 92,1.07 nohead lt 3 lw 10
set arrow from 93,1.09 to 115,1.09 nohead lt 1 lw 40
set arrow from 116,1.11 to 136,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379085"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:136]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379085.eps"
plot "./TMHMM_62292/2570379085.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
