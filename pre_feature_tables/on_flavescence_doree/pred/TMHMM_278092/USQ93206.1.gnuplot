set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 47,1.11 nohead lt 4 lw 10
set arrow from 48,1.09 to 65,1.09 nohead lt 1 lw 40
set arrow from 66,1.07 to 77,1.07 nohead lt 3 lw 10
set arrow from 78,1.09 to 95,1.09 nohead lt 1 lw 40
set arrow from 96,1.11 to 109,1.11 nohead lt 4 lw 10
set arrow from 110,1.09 to 128,1.09 nohead lt 1 lw 40
set arrow from 129,1.07 to 134,1.07 nohead lt 3 lw 10
set arrow from 135,1.09 to 154,1.09 nohead lt 1 lw 40
set arrow from 155,1.11 to 168,1.11 nohead lt 4 lw 10
set arrow from 169,1.09 to 191,1.09 nohead lt 1 lw 40
set arrow from 192,1.07 to 211,1.07 nohead lt 3 lw 10
set arrow from 212,1.09 to 234,1.09 nohead lt 1 lw 40
set arrow from 235,1.11 to 260,1.11 nohead lt 4 lw 10
set arrow from 261,1.09 to 283,1.09 nohead lt 1 lw 40
set arrow from 284,1.07 to 309,1.07 nohead lt 3 lw 10
set arrow from 310,1.09 to 325,1.09 nohead lt 1 lw 40
set arrow from 326,1.11 to 326,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93206.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:326]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93206.1.eps"
plot "./TMHMM_278092/USQ93206.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
