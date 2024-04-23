set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.11 to 56,1.11 nohead lt 4 lw 10
set arrow from 57,1.09 to 79,1.09 nohead lt 1 lw 40
set arrow from 80,1.07 to 90,1.07 nohead lt 3 lw 10
set arrow from 91,1.09 to 113,1.09 nohead lt 1 lw 40
set arrow from 114,1.11 to 127,1.11 nohead lt 4 lw 10
set arrow from 128,1.09 to 150,1.09 nohead lt 1 lw 40
set arrow from 151,1.07 to 156,1.07 nohead lt 3 lw 10
set arrow from 157,1.09 to 179,1.09 nohead lt 1 lw 40
set arrow from 180,1.11 to 213,1.11 nohead lt 4 lw 10
set arrow from 214,1.09 to 236,1.09 nohead lt 1 lw 40
set arrow from 237,1.07 to 248,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378965"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:248]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378965.eps"
plot "./TMHMM_62292/2570378965.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
