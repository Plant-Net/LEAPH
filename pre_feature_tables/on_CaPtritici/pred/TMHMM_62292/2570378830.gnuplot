set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 71,1.11 nohead lt 4 lw 10
set arrow from 72,1.09 to 94,1.09 nohead lt 1 lw 40
set arrow from 95,1.07 to 106,1.07 nohead lt 3 lw 10
set arrow from 107,1.09 to 129,1.09 nohead lt 1 lw 40
set arrow from 130,1.11 to 148,1.11 nohead lt 4 lw 10
set arrow from 149,1.09 to 171,1.09 nohead lt 1 lw 40
set arrow from 172,1.07 to 194,1.07 nohead lt 3 lw 10
set arrow from 195,1.09 to 217,1.09 nohead lt 1 lw 40
set arrow from 218,1.11 to 280,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378830"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:280]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378830.eps"
plot "./TMHMM_62292/2570378830.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
