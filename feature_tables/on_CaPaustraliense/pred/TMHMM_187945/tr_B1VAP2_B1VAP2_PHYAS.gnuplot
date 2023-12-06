set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 87,1.11 nohead lt 4 lw 10
set arrow from 88,1.09 to 109,1.09 nohead lt 1 lw 40
set arrow from 110,1.07 to 115,1.07 nohead lt 3 lw 10
set arrow from 116,1.09 to 138,1.09 nohead lt 1 lw 40
set arrow from 139,1.11 to 157,1.11 nohead lt 4 lw 10
set arrow from 158,1.09 to 180,1.09 nohead lt 1 lw 40
set arrow from 181,1.07 to 186,1.07 nohead lt 3 lw 10
set arrow from 187,1.09 to 209,1.09 nohead lt 1 lw 40
set arrow from 210,1.11 to 263,1.11 nohead lt 4 lw 10
set arrow from 264,1.09 to 286,1.09 nohead lt 1 lw 40
set arrow from 287,1.07 to 299,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAP2|B1VAP2_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:299]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAP2_B1VAP2_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAP2_B1VAP2_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
