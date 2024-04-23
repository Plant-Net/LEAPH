set arrow from 1,1.11 to 9,1.11 nohead lt 4 lw 10
set arrow from 10,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.07 to 38,1.07 nohead lt 3 lw 10
set arrow from 39,1.09 to 58,1.09 nohead lt 1 lw 40
set arrow from 59,1.11 to 72,1.11 nohead lt 4 lw 10
set arrow from 73,1.09 to 95,1.09 nohead lt 1 lw 40
set arrow from 96,1.07 to 114,1.07 nohead lt 3 lw 10
set arrow from 115,1.09 to 137,1.09 nohead lt 1 lw 40
set arrow from 138,1.11 to 146,1.11 nohead lt 4 lw 10
set arrow from 147,1.09 to 169,1.09 nohead lt 1 lw 40
set arrow from 170,1.07 to 188,1.07 nohead lt 3 lw 10
set arrow from 189,1.09 to 208,1.09 nohead lt 1 lw 40
set arrow from 209,1.11 to 235,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V9C6|B1V9C6_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:235]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V9C6_B1V9C6_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V9C6_B1V9C6_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
