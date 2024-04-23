set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.11 to 41,1.11 nohead lt 4 lw 10
set arrow from 42,1.09 to 64,1.09 nohead lt 1 lw 40
set arrow from 65,1.07 to 65,1.07 nohead lt 3 lw 10
set arrow from 66,1.09 to 88,1.09 nohead lt 1 lw 40
set arrow from 89,1.11 to 102,1.11 nohead lt 4 lw 10
set arrow from 103,1.09 to 125,1.09 nohead lt 1 lw 40
set arrow from 126,1.07 to 137,1.07 nohead lt 3 lw 10
set arrow from 138,1.09 to 160,1.09 nohead lt 1 lw 40
set arrow from 161,1.11 to 188,1.11 nohead lt 4 lw 10
set arrow from 189,1.09 to 211,1.09 nohead lt 1 lw 40
set arrow from 212,1.07 to 221,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V981|B1V981_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:221]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V981_B1V981_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V981_B1V981_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
