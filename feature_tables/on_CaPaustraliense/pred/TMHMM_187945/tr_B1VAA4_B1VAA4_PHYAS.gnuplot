set arrow from 1,1.07 to 48,1.07 nohead lt 3 lw 10
set arrow from 49,1.09 to 71,1.09 nohead lt 1 lw 40
set arrow from 72,1.11 to 75,1.11 nohead lt 4 lw 10
set arrow from 76,1.09 to 98,1.09 nohead lt 1 lw 40
set arrow from 99,1.07 to 104,1.07 nohead lt 3 lw 10
set arrow from 105,1.09 to 127,1.09 nohead lt 1 lw 40
set arrow from 128,1.11 to 141,1.11 nohead lt 4 lw 10
set arrow from 142,1.09 to 161,1.09 nohead lt 1 lw 40
set arrow from 162,1.07 to 167,1.07 nohead lt 3 lw 10
set arrow from 168,1.09 to 190,1.09 nohead lt 1 lw 40
set arrow from 191,1.11 to 202,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAA4|B1VAA4_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:202]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAA4_B1VAA4_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAA4_B1VAA4_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
