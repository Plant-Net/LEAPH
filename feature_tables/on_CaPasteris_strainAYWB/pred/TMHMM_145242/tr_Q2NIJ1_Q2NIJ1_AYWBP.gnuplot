set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 39,1.09 nohead lt 1 lw 40
set arrow from 40,1.11 to 387,1.11 nohead lt 4 lw 10
set arrow from 388,1.09 to 410,1.09 nohead lt 1 lw 40
set arrow from 411,1.07 to 430,1.07 nohead lt 3 lw 10
set arrow from 431,1.09 to 453,1.09 nohead lt 1 lw 40
set arrow from 454,1.11 to 467,1.11 nohead lt 4 lw 10
set arrow from 468,1.09 to 488,1.09 nohead lt 1 lw 40
set arrow from 489,1.07 to 565,1.07 nohead lt 3 lw 10
set arrow from 566,1.09 to 588,1.09 nohead lt 1 lw 40
set arrow from 589,1.11 to 598,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIJ1|Q2NIJ1_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:598]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIJ1_Q2NIJ1_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIJ1_Q2NIJ1_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
