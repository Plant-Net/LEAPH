set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.11 to 41,1.11 nohead lt 4 lw 10
set arrow from 42,1.09 to 59,1.09 nohead lt 1 lw 40
set arrow from 60,1.07 to 70,1.07 nohead lt 3 lw 10
set arrow from 71,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.11 to 102,1.11 nohead lt 4 lw 10
set arrow from 103,1.09 to 125,1.09 nohead lt 1 lw 40
set arrow from 126,1.07 to 136,1.07 nohead lt 3 lw 10
set arrow from 137,1.09 to 154,1.09 nohead lt 1 lw 40
set arrow from 155,1.11 to 163,1.11 nohead lt 4 lw 10
set arrow from 164,1.09 to 181,1.09 nohead lt 1 lw 40
set arrow from 182,1.07 to 193,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V901|B1V901_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:193]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V901_B1V901_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V901_B1V901_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
