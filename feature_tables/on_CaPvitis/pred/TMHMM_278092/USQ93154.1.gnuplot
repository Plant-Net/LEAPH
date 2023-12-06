set arrow from 1,1.07 to 8,1.07 nohead lt 3 lw 10
set arrow from 9,1.09 to 31,1.09 nohead lt 1 lw 40
set arrow from 32,1.11 to 72,1.11 nohead lt 4 lw 10
set arrow from 73,1.09 to 95,1.09 nohead lt 1 lw 40
set arrow from 96,1.07 to 107,1.07 nohead lt 3 lw 10
set arrow from 108,1.09 to 130,1.09 nohead lt 1 lw 40
set arrow from 131,1.11 to 133,1.11 nohead lt 4 lw 10
set arrow from 134,1.09 to 156,1.09 nohead lt 1 lw 40
set arrow from 157,1.07 to 191,1.07 nohead lt 3 lw 10
set arrow from 192,1.09 to 214,1.09 nohead lt 1 lw 40
set arrow from 215,1.11 to 233,1.11 nohead lt 4 lw 10
set arrow from 234,1.09 to 256,1.09 nohead lt 1 lw 40
set arrow from 257,1.07 to 265,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93154.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:265]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93154.1.eps"
plot "./TMHMM_278092/USQ93154.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
