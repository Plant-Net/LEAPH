set arrow from 1,1.07 to 15,1.07 nohead lt 3 lw 10
set arrow from 16,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 52,1.11 nohead lt 4 lw 10
set arrow from 53,1.09 to 70,1.09 nohead lt 1 lw 40
set arrow from 71,1.07 to 82,1.07 nohead lt 3 lw 10
set arrow from 83,1.09 to 102,1.09 nohead lt 1 lw 40
set arrow from 103,1.11 to 160,1.11 nohead lt 4 lw 10
set arrow from 161,1.09 to 183,1.09 nohead lt 1 lw 40
set arrow from 184,1.07 to 203,1.07 nohead lt 3 lw 10
set arrow from 204,1.09 to 226,1.09 nohead lt 1 lw 40
set arrow from 227,1.11 to 245,1.11 nohead lt 4 lw 10
set arrow from 246,1.09 to 268,1.09 nohead lt 1 lw 40
set arrow from 269,1.07 to 304,1.07 nohead lt 3 lw 10
set arrow from 305,1.09 to 327,1.09 nohead lt 1 lw 40
set arrow from 328,1.11 to 339,1.11 nohead lt 4 lw 10
set arrow from 340,1.09 to 357,1.09 nohead lt 1 lw 40
set arrow from 358,1.07 to 398,1.07 nohead lt 3 lw 10
set arrow from 399,1.09 to 421,1.09 nohead lt 1 lw 40
set arrow from 422,1.11 to 430,1.11 nohead lt 4 lw 10
set arrow from 431,1.09 to 453,1.09 nohead lt 1 lw 40
set arrow from 454,1.07 to 464,1.07 nohead lt 3 lw 10
set arrow from 465,1.09 to 487,1.09 nohead lt 1 lw 40
set arrow from 488,1.11 to 488,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAX9|B1VAX9_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:488]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAX9_B1VAX9_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAX9_B1VAX9_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
