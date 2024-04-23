set arrow from 1,1.07 to 15,1.07 nohead lt 3 lw 10
set arrow from 16,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 52,1.11 nohead lt 4 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.07 to 99,1.07 nohead lt 3 lw 10
set arrow from 100,1.09 to 119,1.09 nohead lt 1 lw 40
set arrow from 120,1.11 to 133,1.11 nohead lt 4 lw 10
set arrow from 134,1.09 to 153,1.09 nohead lt 1 lw 40
set arrow from 154,1.07 to 159,1.07 nohead lt 3 lw 10
set arrow from 160,1.09 to 182,1.09 nohead lt 1 lw 40
set arrow from 183,1.11 to 201,1.11 nohead lt 4 lw 10
set arrow from 202,1.09 to 224,1.09 nohead lt 1 lw 40
set arrow from 225,1.07 to 244,1.07 nohead lt 3 lw 10
set arrow from 245,1.09 to 267,1.09 nohead lt 1 lw 40
set arrow from 268,1.11 to 291,1.11 nohead lt 4 lw 10
set arrow from 292,1.09 to 314,1.09 nohead lt 1 lw 40
set arrow from 315,1.07 to 351,1.07 nohead lt 3 lw 10
set arrow from 352,1.09 to 374,1.09 nohead lt 1 lw 40
set arrow from 375,1.11 to 413,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIX4|Q2NIX4_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:413]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIX4_Q2NIX4_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIX4_Q2NIX4_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
