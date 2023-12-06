set arrow from 1,1.07 to 4,1.07 nohead lt 3 lw 10
set arrow from 5,1.09 to 27,1.09 nohead lt 1 lw 40
set arrow from 28,1.11 to 30,1.11 nohead lt 4 lw 10
set arrow from 31,1.09 to 53,1.09 nohead lt 1 lw 40
set arrow from 54,1.07 to 72,1.07 nohead lt 3 lw 10
set arrow from 73,1.09 to 92,1.09 nohead lt 1 lw 40
set arrow from 93,1.11 to 104,1.11 nohead lt 4 lw 10
set arrow from 105,1.09 to 127,1.09 nohead lt 1 lw 40
set arrow from 128,1.07 to 138,1.07 nohead lt 3 lw 10
set arrow from 139,1.09 to 156,1.09 nohead lt 1 lw 40
set arrow from 157,1.11 to 165,1.11 nohead lt 4 lw 10
set arrow from 166,1.09 to 183,1.09 nohead lt 1 lw 40
set arrow from 184,1.07 to 195,1.07 nohead lt 3 lw 10
set arrow from 196,1.09 to 218,1.09 nohead lt 1 lw 40
set arrow from 219,1.11 to 221,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAI7|B1VAI7_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:221]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAI7_B1VAI7_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAI7_B1VAI7_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
