set arrow from 1,1.07 to 15,1.07 nohead lt 3 lw 10
set arrow from 16,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 52,1.11 nohead lt 4 lw 10
set arrow from 53,1.09 to 72,1.09 nohead lt 1 lw 40
set arrow from 73,1.07 to 84,1.07 nohead lt 3 lw 10
set arrow from 85,1.09 to 102,1.09 nohead lt 1 lw 40
set arrow from 103,1.11 to 107,1.11 nohead lt 4 lw 10
set arrow from 108,1.09 to 125,1.09 nohead lt 1 lw 40
set arrow from 126,1.07 to 255,1.07 nohead lt 3 lw 10
set arrow from 256,1.09 to 278,1.09 nohead lt 1 lw 40
set arrow from 279,1.11 to 297,1.11 nohead lt 4 lw 10
set arrow from 298,1.09 to 320,1.09 nohead lt 1 lw 40
set arrow from 321,1.07 to 600,1.07 nohead lt 3 lw 10
set arrow from 601,1.09 to 623,1.09 nohead lt 1 lw 40
set arrow from 624,1.11 to 653,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93459.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:653]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93459.1.eps"
plot "./TMHMM_278092/USQ93459.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
