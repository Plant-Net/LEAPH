set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 30,1.09 nohead lt 1 lw 40
set arrow from 31,1.11 to 39,1.11 nohead lt 4 lw 10
set arrow from 40,1.09 to 62,1.09 nohead lt 1 lw 40
set arrow from 63,1.07 to 73,1.07 nohead lt 3 lw 10
set arrow from 74,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.11 to 97,1.11 nohead lt 4 lw 10
set arrow from 98,1.09 to 115,1.09 nohead lt 1 lw 40
set arrow from 116,1.07 to 248,1.07 nohead lt 3 lw 10
set arrow from 249,1.09 to 271,1.09 nohead lt 1 lw 40
set arrow from 272,1.11 to 285,1.11 nohead lt 4 lw 10
set arrow from 286,1.09 to 308,1.09 nohead lt 1 lw 40
set arrow from 309,1.07 to 589,1.07 nohead lt 3 lw 10
set arrow from 590,1.09 to 612,1.09 nohead lt 1 lw 40
set arrow from 613,1.11 to 638,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V9I3|B1V9I3_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:638]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V9I3_B1V9I3_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V9I3_B1V9I3_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
