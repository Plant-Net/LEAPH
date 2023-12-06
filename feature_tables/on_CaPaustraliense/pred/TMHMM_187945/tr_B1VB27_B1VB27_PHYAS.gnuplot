set arrow from 1,1.11 to 3,1.11 nohead lt 4 lw 10
set arrow from 4,1.09 to 26,1.09 nohead lt 1 lw 40
set arrow from 27,1.07 to 32,1.07 nohead lt 3 lw 10
set arrow from 33,1.09 to 55,1.09 nohead lt 1 lw 40
set arrow from 56,1.11 to 74,1.11 nohead lt 4 lw 10
set arrow from 75,1.09 to 97,1.09 nohead lt 1 lw 40
set arrow from 98,1.07 to 101,1.07 nohead lt 3 lw 10
set arrow from 102,1.09 to 124,1.09 nohead lt 1 lw 40
set arrow from 125,1.11 to 138,1.11 nohead lt 4 lw 10
set arrow from 139,1.09 to 158,1.09 nohead lt 1 lw 40
set arrow from 159,1.07 to 178,1.07 nohead lt 3 lw 10
set arrow from 179,1.09 to 196,1.09 nohead lt 1 lw 40
set arrow from 197,1.11 to 216,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VB27|B1VB27_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:216]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VB27_B1VB27_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VB27_B1VB27_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
