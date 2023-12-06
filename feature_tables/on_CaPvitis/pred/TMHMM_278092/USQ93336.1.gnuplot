set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.07 to 256,1.07 nohead lt 3 lw 10
set arrow from 257,1.09 to 279,1.09 nohead lt 1 lw 40
set arrow from 280,1.11 to 288,1.11 nohead lt 4 lw 10
set arrow from 289,1.09 to 311,1.09 nohead lt 1 lw 40
set arrow from 312,1.07 to 362,1.07 nohead lt 3 lw 10
set arrow from 363,1.09 to 385,1.09 nohead lt 1 lw 40
set arrow from 386,1.11 to 417,1.11 nohead lt 4 lw 10
set arrow from 418,1.09 to 440,1.09 nohead lt 1 lw 40
set arrow from 441,1.07 to 472,1.07 nohead lt 3 lw 10
set arrow from 473,1.09 to 495,1.09 nohead lt 1 lw 40
set arrow from 496,1.11 to 526,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93336.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:526]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93336.1.eps"
plot "./TMHMM_278092/USQ93336.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
