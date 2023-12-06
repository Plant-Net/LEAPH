set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.11 to 46,1.11 nohead lt 4 lw 10
set arrow from 47,1.09 to 66,1.09 nohead lt 1 lw 40
set arrow from 67,1.07 to 70,1.07 nohead lt 3 lw 10
set arrow from 71,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.11 to 112,1.11 nohead lt 4 lw 10
set arrow from 113,1.09 to 135,1.09 nohead lt 1 lw 40
set arrow from 136,1.07 to 147,1.07 nohead lt 3 lw 10
set arrow from 148,1.09 to 170,1.09 nohead lt 1 lw 40
set arrow from 171,1.11 to 189,1.11 nohead lt 4 lw 10
set arrow from 190,1.09 to 224,1.09 nohead lt 1 lw 40
set arrow from 225,1.07 to 240,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIM4|Q2NIM4_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:240]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIM4_Q2NIM4_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIM4_Q2NIM4_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
