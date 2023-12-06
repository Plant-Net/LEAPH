set arrow from 1,1.07 to 21,1.07 nohead lt 3 lw 10
set arrow from 22,1.09 to 44,1.09 nohead lt 1 lw 40
set arrow from 45,1.11 to 58,1.11 nohead lt 4 lw 10
set arrow from 59,1.09 to 81,1.09 nohead lt 1 lw 40
set arrow from 82,1.07 to 101,1.07 nohead lt 3 lw 10
set arrow from 102,1.09 to 124,1.09 nohead lt 1 lw 40
set arrow from 125,1.11 to 136,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAN2|B1VAN2_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:136]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAN2_B1VAN2_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAN2_B1VAN2_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
