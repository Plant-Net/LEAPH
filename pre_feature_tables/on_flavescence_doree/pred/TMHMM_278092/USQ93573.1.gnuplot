set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 43,1.11 nohead lt 4 lw 10
set arrow from 44,1.09 to 63,1.09 nohead lt 1 lw 40
set arrow from 64,1.07 to 83,1.07 nohead lt 3 lw 10
set arrow from 84,1.09 to 104,1.09 nohead lt 1 lw 40
set arrow from 105,1.11 to 113,1.11 nohead lt 4 lw 10
set arrow from 114,1.09 to 136,1.09 nohead lt 1 lw 40
set arrow from 137,1.07 to 142,1.07 nohead lt 3 lw 10
set arrow from 143,1.09 to 165,1.09 nohead lt 1 lw 40
set arrow from 166,1.11 to 179,1.11 nohead lt 4 lw 10
set arrow from 180,1.09 to 202,1.09 nohead lt 1 lw 40
set arrow from 203,1.07 to 212,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93573.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:212]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93573.1.eps"
plot "./TMHMM_278092/USQ93573.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
