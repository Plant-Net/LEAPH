set arrow from 1,1.07 to 18,1.07 nohead lt 3 lw 10
set arrow from 19,1.09 to 41,1.09 nohead lt 1 lw 40
set arrow from 42,1.11 to 60,1.11 nohead lt 4 lw 10
set arrow from 61,1.09 to 83,1.09 nohead lt 1 lw 40
set arrow from 84,1.07 to 114,1.07 nohead lt 3 lw 10
set arrow from 115,1.09 to 137,1.09 nohead lt 1 lw 40
set arrow from 138,1.11 to 146,1.11 nohead lt 4 lw 10
set arrow from 147,1.09 to 166,1.09 nohead lt 1 lw 40
set arrow from 167,1.07 to 167,1.07 nohead lt 3 lw 10
set arrow from 168,1.09 to 190,1.09 nohead lt 1 lw 40
set arrow from 191,1.11 to 213,1.11 nohead lt 4 lw 10
set arrow from 214,1.09 to 233,1.09 nohead lt 1 lw 40
set arrow from 234,1.07 to 237,1.07 nohead lt 3 lw 10
set arrow from 238,1.09 to 260,1.09 nohead lt 1 lw 40
set arrow from 261,1.11 to 279,1.11 nohead lt 4 lw 10
set arrow from 280,1.09 to 302,1.09 nohead lt 1 lw 40
set arrow from 303,1.07 to 303,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIS6|Q2NIS6_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:303]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIS6_Q2NIS6_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIS6_Q2NIS6_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
