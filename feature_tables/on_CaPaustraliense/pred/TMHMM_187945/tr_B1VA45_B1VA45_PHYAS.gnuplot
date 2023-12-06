set arrow from 1,1.11 to 9,1.11 nohead lt 4 lw 10
set arrow from 10,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.07 to 34,1.07 nohead lt 3 lw 10
set arrow from 35,1.09 to 57,1.09 nohead lt 1 lw 40
set arrow from 58,1.11 to 61,1.11 nohead lt 4 lw 10
set arrow from 62,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.07 to 92,1.07 nohead lt 3 lw 10
set arrow from 93,1.09 to 115,1.09 nohead lt 1 lw 40
set arrow from 116,1.11 to 140,1.11 nohead lt 4 lw 10
set arrow from 141,1.09 to 163,1.09 nohead lt 1 lw 40
set arrow from 164,1.07 to 169,1.07 nohead lt 3 lw 10
set arrow from 170,1.09 to 192,1.09 nohead lt 1 lw 40
set arrow from 193,1.11 to 196,1.11 nohead lt 4 lw 10
set arrow from 197,1.09 to 216,1.09 nohead lt 1 lw 40
set arrow from 217,1.07 to 222,1.07 nohead lt 3 lw 10
set arrow from 223,1.09 to 245,1.09 nohead lt 1 lw 40
set arrow from 246,1.11 to 248,1.11 nohead lt 4 lw 10
set arrow from 249,1.09 to 267,1.09 nohead lt 1 lw 40
set arrow from 268,1.07 to 362,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA45|B1VA45_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:362]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA45_B1VA45_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA45_B1VA45_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
