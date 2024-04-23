set arrow from 1,1.11 to 34,1.11 nohead lt 4 lw 10
set arrow from 35,1.09 to 57,1.09 nohead lt 1 lw 40
set arrow from 58,1.07 to 63,1.07 nohead lt 3 lw 10
set arrow from 64,1.09 to 86,1.09 nohead lt 1 lw 40
set arrow from 87,1.11 to 111,1.11 nohead lt 4 lw 10
set arrow from 112,1.09 to 134,1.09 nohead lt 1 lw 40
set arrow from 135,1.07 to 190,1.07 nohead lt 3 lw 10
set arrow from 191,1.09 to 213,1.09 nohead lt 1 lw 40
set arrow from 214,1.11 to 243,1.11 nohead lt 4 lw 10
set arrow from 244,1.09 to 266,1.09 nohead lt 1 lw 40
set arrow from 267,1.07 to 281,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NKB1|Q2NKB1_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:281]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NKB1_Q2NKB1_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NKB1_Q2NKB1_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
