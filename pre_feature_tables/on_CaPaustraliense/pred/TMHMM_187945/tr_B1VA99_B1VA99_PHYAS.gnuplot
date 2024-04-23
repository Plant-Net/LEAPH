set arrow from 1,1.11 to 12,1.11 nohead lt 4 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.07 to 47,1.07 nohead lt 3 lw 10
set arrow from 48,1.09 to 70,1.09 nohead lt 1 lw 40
set arrow from 71,1.11 to 101,1.11 nohead lt 4 lw 10
set arrow from 102,1.09 to 121,1.09 nohead lt 1 lw 40
set arrow from 122,1.07 to 133,1.07 nohead lt 3 lw 10
set arrow from 134,1.09 to 156,1.09 nohead lt 1 lw 40
set arrow from 157,1.11 to 184,1.11 nohead lt 4 lw 10
set arrow from 185,1.09 to 207,1.09 nohead lt 1 lw 40
set arrow from 208,1.07 to 222,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA99|B1VA99_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:222]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA99_B1VA99_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA99_B1VA99_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
