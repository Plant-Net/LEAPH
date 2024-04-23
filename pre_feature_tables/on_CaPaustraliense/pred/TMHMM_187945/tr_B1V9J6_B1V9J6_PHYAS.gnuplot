set arrow from 1,1.11 to 171,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V9J6|B1V9J6_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:171]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V9J6_B1V9J6_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V9J6_B1V9J6_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
