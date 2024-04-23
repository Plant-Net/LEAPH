set arrow from 1,1.11 to 3,1.11 nohead lt 4 lw 10
set arrow from 4,1.09 to 26,1.09 nohead lt 1 lw 40
set arrow from 27,1.07 to 55,1.07 nohead lt 3 lw 10
set arrow from 56,1.09 to 78,1.09 nohead lt 1 lw 40
set arrow from 79,1.11 to 92,1.11 nohead lt 4 lw 10
set arrow from 93,1.09 to 115,1.09 nohead lt 1 lw 40
set arrow from 116,1.07 to 127,1.07 nohead lt 3 lw 10
set arrow from 128,1.09 to 150,1.09 nohead lt 1 lw 40
set arrow from 151,1.11 to 154,1.11 nohead lt 4 lw 10
set arrow from 155,1.09 to 177,1.09 nohead lt 1 lw 40
set arrow from 178,1.07 to 197,1.07 nohead lt 3 lw 10
set arrow from 198,1.09 to 220,1.09 nohead lt 1 lw 40
set arrow from 221,1.11 to 231,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for sp|Q2NJF6|PLSY_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:231]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/sp_Q2NJF6_PLSY_AYWBP.eps"
plot "./TMHMM_145242/sp_Q2NJF6_PLSY_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
