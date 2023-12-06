set arrow from 1,1.11 to 9,1.11 nohead lt 4 lw 10
set arrow from 10,1.09 to 27,1.09 nohead lt 1 lw 40
set arrow from 28,1.07 to 248,1.07 nohead lt 3 lw 10
set arrow from 249,1.09 to 268,1.09 nohead lt 1 lw 40
set arrow from 269,1.11 to 272,1.11 nohead lt 4 lw 10
set arrow from 273,1.09 to 295,1.09 nohead lt 1 lw 40
set arrow from 296,1.07 to 351,1.07 nohead lt 3 lw 10
set arrow from 352,1.09 to 374,1.09 nohead lt 1 lw 40
set arrow from 375,1.11 to 407,1.11 nohead lt 4 lw 10
set arrow from 408,1.09 to 430,1.09 nohead lt 1 lw 40
set arrow from 431,1.07 to 456,1.07 nohead lt 3 lw 10
set arrow from 457,1.09 to 474,1.09 nohead lt 1 lw 40
set arrow from 475,1.11 to 478,1.11 nohead lt 4 lw 10
set arrow from 479,1.09 to 496,1.09 nohead lt 1 lw 40
set arrow from 497,1.07 to 513,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJ04|Q2NJ04_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:513]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJ04_Q2NJ04_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJ04_Q2NJ04_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
