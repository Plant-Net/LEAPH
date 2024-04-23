set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 42,1.09 nohead lt 1 lw 40
set arrow from 43,1.11 to 68,1.11 nohead lt 4 lw 10
set arrow from 69,1.09 to 91,1.09 nohead lt 1 lw 40
set arrow from 92,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 115,1.09 nohead lt 1 lw 40
set arrow from 116,1.11 to 124,1.11 nohead lt 4 lw 10
set arrow from 125,1.09 to 147,1.09 nohead lt 1 lw 40
set arrow from 148,1.07 to 153,1.07 nohead lt 3 lw 10
set arrow from 154,1.09 to 173,1.09 nohead lt 1 lw 40
set arrow from 174,1.11 to 192,1.11 nohead lt 4 lw 10
set arrow from 193,1.09 to 215,1.09 nohead lt 1 lw 40
set arrow from 216,1.07 to 287,1.07 nohead lt 3 lw 10
set arrow from 288,1.09 to 310,1.09 nohead lt 1 lw 40
set arrow from 311,1.11 to 324,1.11 nohead lt 4 lw 10
set arrow from 325,1.09 to 347,1.09 nohead lt 1 lw 40
set arrow from 348,1.07 to 348,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIT7|Q2NIT7_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:348]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIT7_Q2NIT7_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIT7_Q2NIT7_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
