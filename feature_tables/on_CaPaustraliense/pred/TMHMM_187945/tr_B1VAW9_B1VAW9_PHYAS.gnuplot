set arrow from 1,1.07 to 22,1.07 nohead lt 3 lw 10
set arrow from 23,1.09 to 45,1.09 nohead lt 1 lw 40
set arrow from 46,1.11 to 84,1.11 nohead lt 4 lw 10
set arrow from 85,1.09 to 107,1.09 nohead lt 1 lw 40
set arrow from 108,1.07 to 119,1.07 nohead lt 3 lw 10
set arrow from 120,1.09 to 142,1.09 nohead lt 1 lw 40
set arrow from 143,1.11 to 146,1.11 nohead lt 4 lw 10
set arrow from 147,1.09 to 165,1.09 nohead lt 1 lw 40
set arrow from 166,1.07 to 202,1.07 nohead lt 3 lw 10
set arrow from 203,1.09 to 225,1.09 nohead lt 1 lw 40
set arrow from 226,1.11 to 253,1.11 nohead lt 4 lw 10
set arrow from 254,1.09 to 276,1.09 nohead lt 1 lw 40
set arrow from 277,1.07 to 286,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAW9|B1VAW9_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:286]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAW9_B1VAW9_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAW9_B1VAW9_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
