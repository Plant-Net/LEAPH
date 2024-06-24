set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.11 to 74,1.11 nohead lt 4 lw 10
set arrow from 75,1.09 to 97,1.09 nohead lt 1 lw 40
set arrow from 98,1.07 to 109,1.07 nohead lt 3 lw 10
set arrow from 110,1.09 to 132,1.09 nohead lt 1 lw 40
set arrow from 133,1.11 to 172,1.11 nohead lt 4 lw 10
set arrow from 173,1.09 to 195,1.09 nohead lt 1 lw 40
set arrow from 196,1.07 to 215,1.07 nohead lt 3 lw 10
set arrow from 216,1.09 to 235,1.09 nohead lt 1 lw 40
set arrow from 236,1.11 to 280,1.11 nohead lt 4 lw 10
set arrow from 281,1.09 to 303,1.09 nohead lt 1 lw 40
set arrow from 304,1.07 to 308,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93144.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:308]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93144.1.eps"
plot "./TMHMM_278092/USQ93144.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
