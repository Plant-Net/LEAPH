set arrow from 1,1.07 to 144,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for sp|B1VAH8|YBEY_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:144]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/sp_B1VAH8_YBEY_PHYAS.eps"
plot "./TMHMM_187945/sp_B1VAH8_YBEY_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
