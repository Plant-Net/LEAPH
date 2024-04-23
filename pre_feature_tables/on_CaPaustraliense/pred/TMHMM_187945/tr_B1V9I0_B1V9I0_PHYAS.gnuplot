set arrow from 1,1.11 to 137,1.11 nohead lt 4 lw 10
set arrow from 138,1.09 to 160,1.09 nohead lt 1 lw 40
set arrow from 161,1.07 to 183,1.07 nohead lt 3 lw 10
set arrow from 184,1.09 to 206,1.09 nohead lt 1 lw 40
set arrow from 207,1.11 to 220,1.11 nohead lt 4 lw 10
set arrow from 221,1.09 to 240,1.09 nohead lt 1 lw 40
set arrow from 241,1.07 to 288,1.07 nohead lt 3 lw 10
set arrow from 289,1.09 to 311,1.09 nohead lt 1 lw 40
set arrow from 312,1.11 to 320,1.11 nohead lt 4 lw 10
set arrow from 321,1.09 to 343,1.09 nohead lt 1 lw 40
set arrow from 344,1.07 to 354,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V9I0|B1V9I0_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:354]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V9I0_B1V9I0_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V9I0_B1V9I0_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
