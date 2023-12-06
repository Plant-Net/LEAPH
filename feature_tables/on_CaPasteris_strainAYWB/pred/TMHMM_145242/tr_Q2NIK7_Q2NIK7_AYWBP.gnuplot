set arrow from 1,1.11 to 312,1.11 nohead lt 4 lw 10
set arrow from 313,1.09 to 335,1.09 nohead lt 1 lw 40
set arrow from 336,1.07 to 347,1.07 nohead lt 3 lw 10
set arrow from 348,1.09 to 370,1.09 nohead lt 1 lw 40
set arrow from 371,1.11 to 409,1.11 nohead lt 4 lw 10
set arrow from 410,1.09 to 432,1.09 nohead lt 1 lw 40
set arrow from 433,1.07 to 452,1.07 nohead lt 3 lw 10
set arrow from 453,1.09 to 475,1.09 nohead lt 1 lw 40
set arrow from 476,1.11 to 504,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIK7|Q2NIK7_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:504]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIK7_Q2NIK7_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIK7_Q2NIK7_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
