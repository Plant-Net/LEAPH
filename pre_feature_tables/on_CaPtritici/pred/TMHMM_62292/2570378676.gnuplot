set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 30,1.09 nohead lt 1 lw 40
set arrow from 31,1.11 to 64,1.11 nohead lt 4 lw 10
set arrow from 65,1.09 to 87,1.09 nohead lt 1 lw 40
set arrow from 88,1.07 to 93,1.07 nohead lt 3 lw 10
set arrow from 94,1.09 to 116,1.09 nohead lt 1 lw 40
set arrow from 117,1.11 to 130,1.11 nohead lt 4 lw 10
set arrow from 131,1.09 to 153,1.09 nohead lt 1 lw 40
set arrow from 154,1.07 to 165,1.07 nohead lt 3 lw 10
set arrow from 166,1.09 to 185,1.09 nohead lt 1 lw 40
set arrow from 186,1.11 to 225,1.11 nohead lt 4 lw 10
set arrow from 226,1.09 to 248,1.09 nohead lt 1 lw 40
set arrow from 249,1.07 to 265,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378676"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:265]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378676.eps"
plot "./TMHMM_62292/2570378676.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
