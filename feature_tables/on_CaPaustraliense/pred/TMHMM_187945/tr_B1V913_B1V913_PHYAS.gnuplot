set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 70,1.11 nohead lt 4 lw 10
set arrow from 71,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.07 to 112,1.07 nohead lt 3 lw 10
set arrow from 113,1.09 to 135,1.09 nohead lt 1 lw 40
set arrow from 136,1.11 to 154,1.11 nohead lt 4 lw 10
set arrow from 155,1.09 to 174,1.09 nohead lt 1 lw 40
set arrow from 175,1.07 to 185,1.07 nohead lt 3 lw 10
set arrow from 186,1.09 to 208,1.09 nohead lt 1 lw 40
set arrow from 209,1.11 to 212,1.11 nohead lt 4 lw 10
set arrow from 213,1.09 to 235,1.09 nohead lt 1 lw 40
set arrow from 236,1.07 to 260,1.07 nohead lt 3 lw 10
set arrow from 261,1.09 to 283,1.09 nohead lt 1 lw 40
set arrow from 284,1.11 to 297,1.11 nohead lt 4 lw 10
set arrow from 298,1.09 to 320,1.09 nohead lt 1 lw 40
set arrow from 321,1.07 to 346,1.07 nohead lt 3 lw 10
set arrow from 347,1.09 to 366,1.09 nohead lt 1 lw 40
set arrow from 367,1.11 to 391,1.11 nohead lt 4 lw 10
set arrow from 392,1.09 to 414,1.09 nohead lt 1 lw 40
set arrow from 415,1.07 to 426,1.07 nohead lt 3 lw 10
set arrow from 427,1.09 to 449,1.09 nohead lt 1 lw 40
set arrow from 450,1.11 to 453,1.11 nohead lt 4 lw 10
set arrow from 454,1.09 to 476,1.09 nohead lt 1 lw 40
set arrow from 477,1.07 to 488,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V913|B1V913_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:488]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V913_B1V913_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V913_B1V913_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
