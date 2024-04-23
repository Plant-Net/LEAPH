set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.11 to 899,1.11 nohead lt 4 lw 10
set arrow from 900,1.09 to 922,1.09 nohead lt 1 lw 40
set arrow from 923,1.07 to 936,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VB39|B1VB39_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:936]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VB39_B1VB39_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VB39_B1VB39_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
