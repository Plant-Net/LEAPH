set arrow from 1,1.07 to 23,1.07 nohead lt 3 lw 10
set arrow from 24,1.09 to 41,1.09 nohead lt 1 lw 40
set arrow from 42,1.11 to 73,1.11 nohead lt 4 lw 10
set arrow from 74,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.07 to 105,1.07 nohead lt 3 lw 10
set arrow from 106,1.09 to 128,1.09 nohead lt 1 lw 40
set arrow from 129,1.11 to 147,1.11 nohead lt 4 lw 10
set arrow from 148,1.09 to 170,1.09 nohead lt 1 lw 40
set arrow from 171,1.07 to 181,1.07 nohead lt 3 lw 10
set arrow from 182,1.09 to 200,1.09 nohead lt 1 lw 40
set arrow from 201,1.11 to 209,1.11 nohead lt 4 lw 10
set arrow from 210,1.09 to 232,1.09 nohead lt 1 lw 40
set arrow from 233,1.07 to 336,1.07 nohead lt 3 lw 10
set arrow from 337,1.09 to 359,1.09 nohead lt 1 lw 40
set arrow from 360,1.11 to 383,1.11 nohead lt 4 lw 10
set arrow from 384,1.09 to 406,1.09 nohead lt 1 lw 40
set arrow from 407,1.07 to 412,1.07 nohead lt 3 lw 10
set arrow from 413,1.09 to 435,1.09 nohead lt 1 lw 40
set arrow from 436,1.11 to 444,1.11 nohead lt 4 lw 10
set arrow from 445,1.09 to 467,1.09 nohead lt 1 lw 40
set arrow from 468,1.07 to 479,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93432.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:479]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93432.1.eps"
plot "./TMHMM_278092/USQ93432.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
