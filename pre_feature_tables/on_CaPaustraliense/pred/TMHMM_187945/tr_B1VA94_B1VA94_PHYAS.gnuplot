set arrow from 1,1.07 to 30,1.07 nohead lt 3 lw 10
set arrow from 31,1.09 to 53,1.09 nohead lt 1 lw 40
set arrow from 54,1.11 to 67,1.11 nohead lt 4 lw 10
set arrow from 68,1.09 to 85,1.09 nohead lt 1 lw 40
set arrow from 86,1.07 to 89,1.07 nohead lt 3 lw 10
set arrow from 90,1.09 to 109,1.09 nohead lt 1 lw 40
set arrow from 110,1.11 to 123,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA94|B1VA94_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:123]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA94_B1VA94_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA94_B1VA94_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
