set arrow from 1,1.11 to 3,1.11 nohead lt 4 lw 10
set arrow from 4,1.09 to 23,1.09 nohead lt 1 lw 40
set arrow from 24,1.07 to 35,1.07 nohead lt 3 lw 10
set arrow from 36,1.09 to 58,1.09 nohead lt 1 lw 40
set arrow from 59,1.11 to 61,1.11 nohead lt 4 lw 10
set arrow from 62,1.09 to 81,1.09 nohead lt 1 lw 40
set arrow from 82,1.07 to 93,1.07 nohead lt 3 lw 10
set arrow from 94,1.09 to 116,1.09 nohead lt 1 lw 40
set arrow from 117,1.11 to 120,1.11 nohead lt 4 lw 10
set arrow from 121,1.09 to 143,1.09 nohead lt 1 lw 40
set arrow from 144,1.07 to 153,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA22|B1VA22_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:153]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA22_B1VA22_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA22_B1VA22_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
