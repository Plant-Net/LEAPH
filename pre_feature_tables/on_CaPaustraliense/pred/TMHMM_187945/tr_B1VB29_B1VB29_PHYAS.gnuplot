set arrow from 1,1.11 to 791,1.11 nohead lt 4 lw 10
set arrow from 792,1.09 to 814,1.09 nohead lt 1 lw 40
set arrow from 815,1.07 to 817,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VB29|B1VB29_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:817]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VB29_B1VB29_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VB29_B1VB29_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
