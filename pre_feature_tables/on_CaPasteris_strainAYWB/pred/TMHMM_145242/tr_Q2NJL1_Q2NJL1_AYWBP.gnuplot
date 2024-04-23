set arrow from 1,1.11 to 19,1.11 nohead lt 4 lw 10
set arrow from 20,1.09 to 42,1.09 nohead lt 1 lw 40
set arrow from 43,1.07 to 65,1.07 nohead lt 3 lw 10
set arrow from 66,1.09 to 88,1.09 nohead lt 1 lw 40
set arrow from 89,1.11 to 97,1.11 nohead lt 4 lw 10
set arrow from 98,1.09 to 120,1.09 nohead lt 1 lw 40
set arrow from 121,1.07 to 166,1.07 nohead lt 3 lw 10
set arrow from 167,1.09 to 189,1.09 nohead lt 1 lw 40
set arrow from 190,1.11 to 198,1.11 nohead lt 4 lw 10
set arrow from 199,1.09 to 221,1.09 nohead lt 1 lw 40
set arrow from 222,1.07 to 233,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJL1|Q2NJL1_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:233]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJL1_Q2NJL1_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJL1_Q2NJL1_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
