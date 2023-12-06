set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.11 to 56,1.11 nohead lt 4 lw 10
set arrow from 57,1.09 to 74,1.09 nohead lt 1 lw 40
set arrow from 75,1.07 to 80,1.07 nohead lt 3 lw 10
set arrow from 81,1.09 to 100,1.09 nohead lt 1 lw 40
set arrow from 101,1.11 to 119,1.11 nohead lt 4 lw 10
set arrow from 120,1.09 to 139,1.09 nohead lt 1 lw 40
set arrow from 140,1.07 to 150,1.07 nohead lt 3 lw 10
set arrow from 151,1.09 to 173,1.09 nohead lt 1 lw 40
set arrow from 174,1.11 to 187,1.11 nohead lt 4 lw 10
set arrow from 188,1.09 to 210,1.09 nohead lt 1 lw 40
set arrow from 211,1.07 to 216,1.07 nohead lt 3 lw 10
set arrow from 217,1.09 to 234,1.09 nohead lt 1 lw 40
set arrow from 235,1.11 to 439,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379016"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:439]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379016.eps"
plot "./TMHMM_62292/2570379016.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
