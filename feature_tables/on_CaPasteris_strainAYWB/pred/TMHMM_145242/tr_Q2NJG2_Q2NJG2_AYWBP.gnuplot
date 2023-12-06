set arrow from 1,1.07 to 28,1.07 nohead lt 3 lw 10
set arrow from 29,1.09 to 51,1.09 nohead lt 1 lw 40
set arrow from 52,1.11 to 106,1.11 nohead lt 4 lw 10
set arrow from 107,1.09 to 129,1.09 nohead lt 1 lw 40
set arrow from 130,1.07 to 149,1.07 nohead lt 3 lw 10
set arrow from 150,1.09 to 172,1.09 nohead lt 1 lw 40
set arrow from 173,1.11 to 186,1.11 nohead lt 4 lw 10
set arrow from 187,1.09 to 209,1.09 nohead lt 1 lw 40
set arrow from 210,1.07 to 229,1.07 nohead lt 3 lw 10
set arrow from 230,1.09 to 252,1.09 nohead lt 1 lw 40
set arrow from 253,1.11 to 282,1.11 nohead lt 4 lw 10
set arrow from 283,1.09 to 305,1.09 nohead lt 1 lw 40
set arrow from 306,1.07 to 315,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJG2|Q2NJG2_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:315]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJG2_Q2NJG2_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJG2_Q2NJG2_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
