set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 38,1.11 nohead lt 4 lw 10
set arrow from 39,1.09 to 61,1.09 nohead lt 1 lw 40
set arrow from 62,1.07 to 67,1.07 nohead lt 3 lw 10
set arrow from 68,1.09 to 90,1.09 nohead lt 1 lw 40
set arrow from 91,1.11 to 109,1.11 nohead lt 4 lw 10
set arrow from 110,1.09 to 132,1.09 nohead lt 1 lw 40
set arrow from 133,1.07 to 143,1.07 nohead lt 3 lw 10
set arrow from 144,1.09 to 166,1.09 nohead lt 1 lw 40
set arrow from 167,1.11 to 180,1.11 nohead lt 4 lw 10
set arrow from 181,1.09 to 203,1.09 nohead lt 1 lw 40
set arrow from 204,1.07 to 223,1.07 nohead lt 3 lw 10
set arrow from 224,1.09 to 246,1.09 nohead lt 1 lw 40
set arrow from 247,1.11 to 300,1.11 nohead lt 4 lw 10
set arrow from 301,1.09 to 323,1.09 nohead lt 1 lw 40
set arrow from 324,1.07 to 365,1.07 nohead lt 3 lw 10
set arrow from 366,1.09 to 388,1.09 nohead lt 1 lw 40
set arrow from 389,1.11 to 397,1.11 nohead lt 4 lw 10
set arrow from 398,1.09 to 420,1.09 nohead lt 1 lw 40
set arrow from 421,1.07 to 426,1.07 nohead lt 3 lw 10
set arrow from 427,1.09 to 449,1.09 nohead lt 1 lw 40
set arrow from 450,1.11 to 455,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJ41|Q2NJ41_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:455]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJ41_Q2NJ41_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJ41_Q2NJ41_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
