set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 57,1.11 nohead lt 4 lw 10
set arrow from 58,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.07 to 110,1.07 nohead lt 3 lw 10
set arrow from 111,1.09 to 133,1.09 nohead lt 1 lw 40
set arrow from 134,1.11 to 142,1.11 nohead lt 4 lw 10
set arrow from 143,1.09 to 162,1.09 nohead lt 1 lw 40
set arrow from 163,1.07 to 163,1.07 nohead lt 3 lw 10
set arrow from 164,1.09 to 186,1.09 nohead lt 1 lw 40
set arrow from 187,1.11 to 209,1.11 nohead lt 4 lw 10
set arrow from 210,1.09 to 229,1.09 nohead lt 1 lw 40
set arrow from 230,1.07 to 233,1.07 nohead lt 3 lw 10
set arrow from 234,1.09 to 256,1.09 nohead lt 1 lw 40
set arrow from 257,1.11 to 275,1.11 nohead lt 4 lw 10
set arrow from 276,1.09 to 298,1.09 nohead lt 1 lw 40
set arrow from 299,1.07 to 299,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379174"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:299]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379174.eps"
plot "./TMHMM_62292/2570379174.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
