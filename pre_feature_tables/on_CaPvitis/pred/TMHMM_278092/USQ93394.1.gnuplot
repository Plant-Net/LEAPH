set arrow from 1,1.07 to 24,1.07 nohead lt 3 lw 10
set arrow from 25,1.09 to 47,1.09 nohead lt 1 lw 40
set arrow from 48,1.11 to 61,1.11 nohead lt 4 lw 10
set arrow from 62,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.07 to 86,1.07 nohead lt 3 lw 10
set arrow from 87,1.09 to 109,1.09 nohead lt 1 lw 40
set arrow from 110,1.11 to 135,1.11 nohead lt 4 lw 10
set arrow from 136,1.09 to 158,1.09 nohead lt 1 lw 40
set arrow from 159,1.07 to 169,1.07 nohead lt 3 lw 10
set arrow from 170,1.09 to 192,1.09 nohead lt 1 lw 40
set arrow from 193,1.11 to 229,1.11 nohead lt 4 lw 10
set arrow from 230,1.09 to 252,1.09 nohead lt 1 lw 40
set arrow from 253,1.07 to 267,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93394.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:267]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93394.1.eps"
plot "./TMHMM_278092/USQ93394.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
