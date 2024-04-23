set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 40,1.09 nohead lt 1 lw 40
set arrow from 41,1.11 to 361,1.11 nohead lt 4 lw 10
set arrow from 362,1.09 to 381,1.09 nohead lt 1 lw 40
set arrow from 382,1.07 to 387,1.07 nohead lt 3 lw 10
set arrow from 388,1.09 to 410,1.09 nohead lt 1 lw 40
set arrow from 411,1.11 to 434,1.11 nohead lt 4 lw 10
set arrow from 435,1.09 to 457,1.09 nohead lt 1 lw 40
set arrow from 458,1.07 to 513,1.07 nohead lt 3 lw 10
set arrow from 514,1.09 to 536,1.09 nohead lt 1 lw 40
set arrow from 537,1.11 to 540,1.11 nohead lt 4 lw 10
set arrow from 541,1.09 to 560,1.09 nohead lt 1 lw 40
set arrow from 561,1.07 to 569,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NK01|Q2NK01_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:569]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NK01_Q2NK01_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NK01_Q2NK01_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
