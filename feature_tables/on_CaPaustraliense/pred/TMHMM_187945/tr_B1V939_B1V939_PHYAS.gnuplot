set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.07 to 79,1.07 nohead lt 3 lw 10
set arrow from 80,1.09 to 102,1.09 nohead lt 1 lw 40
set arrow from 103,1.11 to 583,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V939|B1V939_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:583]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V939_B1V939_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V939_B1V939_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
