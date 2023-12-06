set arrow from 1,1.07 to 61,1.07 nohead lt 3 lw 10
set arrow from 62,1.09 to 81,1.09 nohead lt 1 lw 40
set arrow from 82,1.11 to 84,1.11 nohead lt 4 lw 10
set arrow from 85,1.09 to 102,1.09 nohead lt 1 lw 40
set arrow from 103,1.07 to 250,1.07 nohead lt 3 lw 10
set arrow from 251,1.09 to 268,1.09 nohead lt 1 lw 40
set arrow from 269,1.11 to 282,1.11 nohead lt 4 lw 10
set arrow from 283,1.09 to 305,1.09 nohead lt 1 lw 40
set arrow from 306,1.07 to 706,1.07 nohead lt 3 lw 10
set arrow from 707,1.09 to 729,1.09 nohead lt 1 lw 40
set arrow from 730,1.11 to 733,1.11 nohead lt 4 lw 10
set arrow from 734,1.09 to 756,1.09 nohead lt 1 lw 40
set arrow from 757,1.07 to 784,1.07 nohead lt 3 lw 10
set arrow from 785,1.09 to 807,1.09 nohead lt 1 lw 40
set arrow from 808,1.11 to 811,1.11 nohead lt 4 lw 10
set arrow from 812,1.09 to 834,1.09 nohead lt 1 lw 40
set arrow from 835,1.07 to 850,1.07 nohead lt 3 lw 10
set arrow from 851,1.09 to 873,1.09 nohead lt 1 lw 40
set arrow from 874,1.11 to 882,1.11 nohead lt 4 lw 10
set arrow from 883,1.09 to 902,1.09 nohead lt 1 lw 40
set arrow from 903,1.07 to 913,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAZ0|B1VAZ0_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:913]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAZ0_B1VAZ0_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAZ0_B1VAZ0_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
