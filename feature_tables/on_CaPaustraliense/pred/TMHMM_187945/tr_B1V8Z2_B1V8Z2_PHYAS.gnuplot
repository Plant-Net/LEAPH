set arrow from 1,1.07 to 65,1.07 nohead lt 3 lw 10
set arrow from 66,1.09 to 88,1.09 nohead lt 1 lw 40
set arrow from 89,1.11 to 97,1.11 nohead lt 4 lw 10
set arrow from 98,1.09 to 120,1.09 nohead lt 1 lw 40
set arrow from 121,1.07 to 215,1.07 nohead lt 3 lw 10
set arrow from 216,1.09 to 235,1.09 nohead lt 1 lw 40
set arrow from 236,1.11 to 266,1.11 nohead lt 4 lw 10
set arrow from 267,1.09 to 284,1.09 nohead lt 1 lw 40
set arrow from 285,1.07 to 295,1.07 nohead lt 3 lw 10
set arrow from 296,1.09 to 318,1.09 nohead lt 1 lw 40
set arrow from 319,1.11 to 699,1.11 nohead lt 4 lw 10
set arrow from 700,1.09 to 722,1.09 nohead lt 1 lw 40
set arrow from 723,1.07 to 742,1.07 nohead lt 3 lw 10
set arrow from 743,1.09 to 765,1.09 nohead lt 1 lw 40
set arrow from 766,1.11 to 774,1.11 nohead lt 4 lw 10
set arrow from 775,1.09 to 797,1.09 nohead lt 1 lw 40
set arrow from 798,1.07 to 808,1.07 nohead lt 3 lw 10
set arrow from 809,1.09 to 831,1.09 nohead lt 1 lw 40
set arrow from 832,1.11 to 850,1.11 nohead lt 4 lw 10
set arrow from 851,1.09 to 873,1.09 nohead lt 1 lw 40
set arrow from 874,1.07 to 882,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V8Z2|B1V8Z2_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:882]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V8Z2_B1V8Z2_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V8Z2_B1V8Z2_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
