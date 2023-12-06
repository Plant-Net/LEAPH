set arrow from 1,1.07 to 36,1.07 nohead lt 3 lw 10
set arrow from 37,1.09 to 59,1.09 nohead lt 1 lw 40
set arrow from 60,1.11 to 68,1.11 nohead lt 4 lw 10
set arrow from 69,1.09 to 91,1.09 nohead lt 1 lw 40
set arrow from 92,1.07 to 126,1.07 nohead lt 3 lw 10
set arrow from 127,1.09 to 149,1.09 nohead lt 1 lw 40
set arrow from 150,1.11 to 163,1.11 nohead lt 4 lw 10
set arrow from 164,1.09 to 186,1.09 nohead lt 1 lw 40
set arrow from 187,1.07 to 192,1.07 nohead lt 3 lw 10
set arrow from 193,1.09 to 215,1.09 nohead lt 1 lw 40
set arrow from 216,1.11 to 234,1.11 nohead lt 4 lw 10
set arrow from 235,1.09 to 257,1.09 nohead lt 1 lw 40
set arrow from 258,1.07 to 265,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VB03|B1VB03_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:265]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VB03_B1VB03_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VB03_B1VB03_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
