set arrow from 1,1.07 to 115,1.07 nohead lt 3 lw 10
set arrow from 116,1.09 to 138,1.09 nohead lt 1 lw 40
set arrow from 139,1.11 to 142,1.11 nohead lt 4 lw 10
set arrow from 143,1.09 to 162,1.09 nohead lt 1 lw 40
set arrow from 163,1.07 to 222,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAK4|B1VAK4_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:222]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAK4_B1VAK4_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAK4_B1VAK4_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
