set arrow from 1,1.11 to 4,1.11 nohead lt 4 lw 10
set arrow from 5,1.09 to 27,1.09 nohead lt 1 lw 40
set arrow from 28,1.07 to 94,1.07 nohead lt 3 lw 10
set arrow from 95,1.09 to 113,1.09 nohead lt 1 lw 40
set arrow from 114,1.11 to 122,1.11 nohead lt 4 lw 10
set arrow from 123,1.09 to 140,1.09 nohead lt 1 lw 40
set arrow from 141,1.07 to 285,1.07 nohead lt 3 lw 10
set arrow from 286,1.09 to 303,1.09 nohead lt 1 lw 40
set arrow from 304,1.11 to 322,1.11 nohead lt 4 lw 10
set arrow from 323,1.09 to 345,1.09 nohead lt 1 lw 40
set arrow from 346,1.07 to 741,1.07 nohead lt 3 lw 10
set arrow from 742,1.09 to 764,1.09 nohead lt 1 lw 40
set arrow from 765,1.11 to 773,1.11 nohead lt 4 lw 10
set arrow from 774,1.09 to 796,1.09 nohead lt 1 lw 40
set arrow from 797,1.07 to 823,1.07 nohead lt 3 lw 10
set arrow from 824,1.09 to 841,1.09 nohead lt 1 lw 40
set arrow from 842,1.11 to 850,1.11 nohead lt 4 lw 10
set arrow from 851,1.09 to 873,1.09 nohead lt 1 lw 40
set arrow from 874,1.07 to 885,1.07 nohead lt 3 lw 10
set arrow from 886,1.09 to 908,1.09 nohead lt 1 lw 40
set arrow from 909,1.11 to 922,1.11 nohead lt 4 lw 10
set arrow from 923,1.09 to 940,1.09 nohead lt 1 lw 40
set arrow from 941,1.07 to 952,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIU3|Q2NIU3_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:952]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIU3_Q2NIU3_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIU3_Q2NIU3_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
