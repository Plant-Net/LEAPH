set arrow from 1,1.11 to 31,1.11 nohead lt 4 lw 10
set arrow from 32,1.09 to 54,1.09 nohead lt 1 lw 40
set arrow from 55,1.07 to 74,1.07 nohead lt 3 lw 10
set arrow from 75,1.09 to 96,1.09 nohead lt 1 lw 40
set arrow from 97,1.11 to 105,1.11 nohead lt 4 lw 10
set arrow from 106,1.09 to 128,1.09 nohead lt 1 lw 40
set arrow from 129,1.07 to 211,1.07 nohead lt 3 lw 10
set arrow from 212,1.09 to 234,1.09 nohead lt 1 lw 40
set arrow from 235,1.11 to 244,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJL4|Q2NJL4_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:244]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJL4_Q2NJL4_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJL4_Q2NJL4_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
