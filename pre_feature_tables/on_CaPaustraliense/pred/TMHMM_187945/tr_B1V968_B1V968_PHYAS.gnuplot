set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 71,1.11 nohead lt 4 lw 10
set arrow from 72,1.09 to 89,1.09 nohead lt 1 lw 40
set arrow from 90,1.07 to 105,1.07 nohead lt 3 lw 10
set arrow from 106,1.09 to 128,1.09 nohead lt 1 lw 40
set arrow from 129,1.11 to 147,1.11 nohead lt 4 lw 10
set arrow from 148,1.09 to 167,1.09 nohead lt 1 lw 40
set arrow from 168,1.07 to 178,1.07 nohead lt 3 lw 10
set arrow from 179,1.09 to 196,1.09 nohead lt 1 lw 40
set arrow from 197,1.11 to 210,1.11 nohead lt 4 lw 10
set arrow from 211,1.09 to 233,1.09 nohead lt 1 lw 40
set arrow from 234,1.07 to 333,1.07 nohead lt 3 lw 10
set arrow from 334,1.09 to 356,1.09 nohead lt 1 lw 40
set arrow from 357,1.11 to 384,1.11 nohead lt 4 lw 10
set arrow from 385,1.09 to 404,1.09 nohead lt 1 lw 40
set arrow from 405,1.07 to 410,1.07 nohead lt 3 lw 10
set arrow from 411,1.09 to 433,1.09 nohead lt 1 lw 40
set arrow from 434,1.11 to 447,1.11 nohead lt 4 lw 10
set arrow from 448,1.09 to 470,1.09 nohead lt 1 lw 40
set arrow from 471,1.07 to 481,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V968|B1V968_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:481]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V968_B1V968_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V968_B1V968_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
