set arrow from 1,1.07 to 62,1.07 nohead lt 3 lw 10
set arrow from 63,1.09 to 85,1.09 nohead lt 1 lw 40
set arrow from 86,1.11 to 125,1.11 nohead lt 4 lw 10
set arrow from 126,1.09 to 148,1.09 nohead lt 1 lw 40
set arrow from 149,1.07 to 154,1.07 nohead lt 3 lw 10
set arrow from 155,1.09 to 177,1.09 nohead lt 1 lw 40
set arrow from 178,1.11 to 186,1.11 nohead lt 4 lw 10
set arrow from 187,1.09 to 209,1.09 nohead lt 1 lw 40
set arrow from 210,1.07 to 220,1.07 nohead lt 3 lw 10
set arrow from 221,1.09 to 243,1.09 nohead lt 1 lw 40
set arrow from 244,1.11 to 246,1.11 nohead lt 4 lw 10
set arrow from 247,1.09 to 269,1.09 nohead lt 1 lw 40
set arrow from 270,1.07 to 288,1.07 nohead lt 3 lw 10
set arrow from 289,1.09 to 311,1.09 nohead lt 1 lw 40
set arrow from 312,1.11 to 323,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93543.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:323]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93543.1.eps"
plot "./TMHMM_278092/USQ93543.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
