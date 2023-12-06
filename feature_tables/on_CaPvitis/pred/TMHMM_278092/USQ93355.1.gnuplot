set arrow from 1,1.11 to 9,1.11 nohead lt 4 lw 10
set arrow from 10,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.07 to 44,1.07 nohead lt 3 lw 10
set arrow from 45,1.09 to 64,1.09 nohead lt 1 lw 40
set arrow from 65,1.11 to 83,1.11 nohead lt 4 lw 10
set arrow from 84,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.07 to 117,1.07 nohead lt 3 lw 10
set arrow from 118,1.09 to 140,1.09 nohead lt 1 lw 40
set arrow from 141,1.11 to 159,1.11 nohead lt 4 lw 10
set arrow from 160,1.09 to 182,1.09 nohead lt 1 lw 40
set arrow from 183,1.07 to 194,1.07 nohead lt 3 lw 10
set arrow from 195,1.09 to 214,1.09 nohead lt 1 lw 40
set arrow from 215,1.11 to 223,1.11 nohead lt 4 lw 10
set arrow from 224,1.09 to 242,1.09 nohead lt 1 lw 40
set arrow from 243,1.07 to 243,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93355.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:243]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93355.1.eps"
plot "./TMHMM_278092/USQ93355.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
