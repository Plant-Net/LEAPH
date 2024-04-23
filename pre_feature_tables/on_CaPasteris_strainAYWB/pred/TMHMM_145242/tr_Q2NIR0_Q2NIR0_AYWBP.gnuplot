set arrow from 1,1.11 to 3,1.11 nohead lt 4 lw 10
set arrow from 4,1.09 to 26,1.09 nohead lt 1 lw 40
set arrow from 27,1.07 to 54,1.07 nohead lt 3 lw 10
set arrow from 55,1.09 to 77,1.09 nohead lt 1 lw 40
set arrow from 78,1.11 to 91,1.11 nohead lt 4 lw 10
set arrow from 92,1.09 to 109,1.09 nohead lt 1 lw 40
set arrow from 110,1.07 to 121,1.07 nohead lt 3 lw 10
set arrow from 122,1.09 to 144,1.09 nohead lt 1 lw 40
set arrow from 145,1.11 to 423,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIR0|Q2NIR0_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:423]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIR0_Q2NIR0_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIR0_Q2NIR0_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
