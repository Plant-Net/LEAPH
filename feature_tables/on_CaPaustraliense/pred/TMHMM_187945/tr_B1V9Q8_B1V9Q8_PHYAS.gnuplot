set arrow from 1,1.07 to 60,1.07 nohead lt 3 lw 10
set arrow from 61,1.09 to 79,1.09 nohead lt 1 lw 40
set arrow from 80,1.11 to 88,1.11 nohead lt 4 lw 10
set arrow from 89,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.07 to 246,1.07 nohead lt 3 lw 10
set arrow from 247,1.09 to 269,1.09 nohead lt 1 lw 40
set arrow from 270,1.11 to 288,1.11 nohead lt 4 lw 10
set arrow from 289,1.09 to 311,1.09 nohead lt 1 lw 40
set arrow from 312,1.07 to 718,1.07 nohead lt 3 lw 10
set arrow from 719,1.09 to 741,1.09 nohead lt 1 lw 40
set arrow from 742,1.11 to 755,1.11 nohead lt 4 lw 10
set arrow from 756,1.09 to 778,1.09 nohead lt 1 lw 40
set arrow from 779,1.07 to 805,1.07 nohead lt 3 lw 10
set arrow from 806,1.09 to 828,1.09 nohead lt 1 lw 40
set arrow from 829,1.11 to 837,1.11 nohead lt 4 lw 10
set arrow from 838,1.09 to 860,1.09 nohead lt 1 lw 40
set arrow from 861,1.07 to 872,1.07 nohead lt 3 lw 10
set arrow from 873,1.09 to 895,1.09 nohead lt 1 lw 40
set arrow from 896,1.11 to 900,1.11 nohead lt 4 lw 10
set arrow from 901,1.09 to 923,1.09 nohead lt 1 lw 40
set arrow from 924,1.07 to 938,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V9Q8|B1V9Q8_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:938]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V9Q8_B1V9Q8_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V9Q8_B1V9Q8_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
