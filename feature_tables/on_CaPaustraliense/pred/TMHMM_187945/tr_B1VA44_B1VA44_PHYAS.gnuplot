set arrow from 1,1.07 to 15,1.07 nohead lt 3 lw 10
set arrow from 16,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 41,1.11 nohead lt 4 lw 10
set arrow from 42,1.09 to 63,1.09 nohead lt 1 lw 40
set arrow from 64,1.07 to 67,1.07 nohead lt 3 lw 10
set arrow from 68,1.09 to 89,1.09 nohead lt 1 lw 40
set arrow from 90,1.11 to 98,1.11 nohead lt 4 lw 10
set arrow from 99,1.09 to 118,1.09 nohead lt 1 lw 40
set arrow from 119,1.07 to 146,1.07 nohead lt 3 lw 10
set arrow from 147,1.09 to 165,1.09 nohead lt 1 lw 40
set arrow from 166,1.11 to 194,1.11 nohead lt 4 lw 10
set arrow from 195,1.09 to 217,1.09 nohead lt 1 lw 40
set arrow from 218,1.07 to 229,1.07 nohead lt 3 lw 10
set arrow from 230,1.09 to 252,1.09 nohead lt 1 lw 40
set arrow from 253,1.11 to 261,1.11 nohead lt 4 lw 10
set arrow from 262,1.09 to 284,1.09 nohead lt 1 lw 40
set arrow from 285,1.07 to 301,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA44|B1VA44_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:301]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA44_B1VA44_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA44_B1VA44_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
