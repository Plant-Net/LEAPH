set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 67,1.11 nohead lt 4 lw 10
set arrow from 68,1.09 to 87,1.09 nohead lt 1 lw 40
set arrow from 88,1.07 to 110,1.07 nohead lt 3 lw 10
set arrow from 111,1.09 to 133,1.09 nohead lt 1 lw 40
set arrow from 134,1.11 to 242,1.11 nohead lt 4 lw 10
set arrow from 243,1.09 to 265,1.09 nohead lt 1 lw 40
set arrow from 266,1.07 to 282,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V942|B1V942_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:282]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V942_B1V942_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V942_B1V942_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
