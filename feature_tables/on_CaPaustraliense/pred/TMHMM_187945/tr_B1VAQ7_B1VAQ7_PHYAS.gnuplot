set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.11 to 69,1.11 nohead lt 4 lw 10
set arrow from 70,1.09 to 89,1.09 nohead lt 1 lw 40
set arrow from 90,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 117,1.09 nohead lt 1 lw 40
set arrow from 118,1.11 to 145,1.11 nohead lt 4 lw 10
set arrow from 146,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.07 to 186,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAQ7|B1VAQ7_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:186]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAQ7_B1VAQ7_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAQ7_B1VAQ7_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
