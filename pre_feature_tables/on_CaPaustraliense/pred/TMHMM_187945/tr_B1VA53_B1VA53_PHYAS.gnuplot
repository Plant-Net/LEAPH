set arrow from 1,1.11 to 30,1.11 nohead lt 4 lw 10
set arrow from 31,1.09 to 53,1.09 nohead lt 1 lw 40
set arrow from 54,1.07 to 61,1.07 nohead lt 3 lw 10
set arrow from 62,1.09 to 84,1.09 nohead lt 1 lw 40
set arrow from 85,1.11 to 87,1.11 nohead lt 4 lw 10
set arrow from 88,1.09 to 110,1.09 nohead lt 1 lw 40
set arrow from 111,1.07 to 155,1.07 nohead lt 3 lw 10
set arrow from 156,1.09 to 178,1.09 nohead lt 1 lw 40
set arrow from 179,1.11 to 207,1.11 nohead lt 4 lw 10
set arrow from 208,1.09 to 230,1.09 nohead lt 1 lw 40
set arrow from 231,1.07 to 237,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA53|B1VA53_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:237]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA53_B1VA53_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA53_B1VA53_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
