set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 70,1.11 nohead lt 4 lw 10
set arrow from 71,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.07 to 112,1.07 nohead lt 3 lw 10
set arrow from 113,1.09 to 135,1.09 nohead lt 1 lw 40
set arrow from 136,1.11 to 154,1.11 nohead lt 4 lw 10
set arrow from 155,1.09 to 173,1.09 nohead lt 1 lw 40
set arrow from 174,1.07 to 184,1.07 nohead lt 3 lw 10
set arrow from 185,1.09 to 207,1.09 nohead lt 1 lw 40
set arrow from 208,1.11 to 211,1.11 nohead lt 4 lw 10
set arrow from 212,1.09 to 234,1.09 nohead lt 1 lw 40
set arrow from 235,1.07 to 260,1.07 nohead lt 3 lw 10
set arrow from 261,1.09 to 283,1.09 nohead lt 1 lw 40
set arrow from 284,1.11 to 297,1.11 nohead lt 4 lw 10
set arrow from 298,1.09 to 320,1.09 nohead lt 1 lw 40
set arrow from 321,1.07 to 345,1.07 nohead lt 3 lw 10
set arrow from 346,1.09 to 368,1.09 nohead lt 1 lw 40
set arrow from 369,1.11 to 392,1.11 nohead lt 4 lw 10
set arrow from 393,1.09 to 415,1.09 nohead lt 1 lw 40
set arrow from 416,1.07 to 421,1.07 nohead lt 3 lw 10
set arrow from 422,1.09 to 439,1.09 nohead lt 1 lw 40
set arrow from 440,1.11 to 448,1.11 nohead lt 4 lw 10
set arrow from 449,1.09 to 471,1.09 nohead lt 1 lw 40
set arrow from 472,1.07 to 486,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378805"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:486]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378805.eps"
plot "./TMHMM_62292/2570378805.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
