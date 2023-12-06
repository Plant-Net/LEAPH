set arrow from 1,1.07 to 36,1.07 nohead lt 3 lw 10
set arrow from 37,1.09 to 59,1.09 nohead lt 1 lw 40
set arrow from 60,1.11 to 68,1.11 nohead lt 4 lw 10
set arrow from 69,1.09 to 91,1.09 nohead lt 1 lw 40
set arrow from 92,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 120,1.09 nohead lt 1 lw 40
set arrow from 121,1.11 to 129,1.11 nohead lt 4 lw 10
set arrow from 130,1.09 to 150,1.09 nohead lt 1 lw 40
set arrow from 151,1.07 to 166,1.07 nohead lt 3 lw 10
set arrow from 167,1.09 to 189,1.09 nohead lt 1 lw 40
set arrow from 190,1.11 to 193,1.11 nohead lt 4 lw 10
set arrow from 194,1.09 to 216,1.09 nohead lt 1 lw 40
set arrow from 217,1.07 to 236,1.07 nohead lt 3 lw 10
set arrow from 237,1.09 to 259,1.09 nohead lt 1 lw 40
set arrow from 260,1.11 to 265,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V9W9|B1V9W9_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:265]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V9W9_B1V9W9_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V9W9_B1V9W9_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
