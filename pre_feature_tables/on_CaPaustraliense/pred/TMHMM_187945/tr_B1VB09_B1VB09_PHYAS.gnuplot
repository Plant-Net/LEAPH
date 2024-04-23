set arrow from 1,1.07 to 82,1.07 nohead lt 3 lw 10
set arrow from 83,1.09 to 105,1.09 nohead lt 1 lw 40
set arrow from 106,1.11 to 151,1.11 nohead lt 4 lw 10
set arrow from 152,1.09 to 174,1.09 nohead lt 1 lw 40
set arrow from 175,1.07 to 175,1.07 nohead lt 3 lw 10
set arrow from 176,1.09 to 198,1.09 nohead lt 1 lw 40
set arrow from 199,1.11 to 1128,1.11 nohead lt 4 lw 10
set arrow from 1129,1.09 to 1151,1.09 nohead lt 1 lw 40
set arrow from 1152,1.07 to 1164,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VB09|B1VB09_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:1164]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VB09_B1VB09_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VB09_B1VB09_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
