set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.07 to 56,1.07 nohead lt 3 lw 10
set arrow from 57,1.09 to 79,1.09 nohead lt 1 lw 40
set arrow from 80,1.11 to 98,1.11 nohead lt 4 lw 10
set arrow from 99,1.09 to 121,1.09 nohead lt 1 lw 40
set arrow from 122,1.07 to 127,1.07 nohead lt 3 lw 10
set arrow from 128,1.09 to 150,1.09 nohead lt 1 lw 40
set arrow from 151,1.11 to 181,1.11 nohead lt 4 lw 10
set arrow from 182,1.09 to 204,1.09 nohead lt 1 lw 40
set arrow from 205,1.07 to 219,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIT3|Q2NIT3_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:219]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIT3_Q2NIT3_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIT3_Q2NIT3_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
