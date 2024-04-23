set arrow from 1,1.07 to 25,1.07 nohead lt 3 lw 10
set arrow from 26,1.09 to 48,1.09 nohead lt 1 lw 40
set arrow from 49,1.11 to 416,1.11 nohead lt 4 lw 10
set arrow from 417,1.09 to 439,1.09 nohead lt 1 lw 40
set arrow from 440,1.07 to 466,1.07 nohead lt 3 lw 10
set arrow from 467,1.09 to 489,1.09 nohead lt 1 lw 40
set arrow from 490,1.11 to 498,1.11 nohead lt 4 lw 10
set arrow from 499,1.09 to 521,1.09 nohead lt 1 lw 40
set arrow from 522,1.07 to 541,1.07 nohead lt 3 lw 10
set arrow from 542,1.09 to 564,1.09 nohead lt 1 lw 40
set arrow from 565,1.11 to 594,1.11 nohead lt 4 lw 10
set arrow from 595,1.09 to 617,1.09 nohead lt 1 lw 40
set arrow from 618,1.07 to 629,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJG1|Q2NJG1_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:629]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJG1_Q2NJG1_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJG1_Q2NJG1_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
