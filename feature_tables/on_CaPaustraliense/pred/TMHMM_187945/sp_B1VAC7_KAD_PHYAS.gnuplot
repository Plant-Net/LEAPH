set arrow from 1,1.11 to 217,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for sp|B1VAC7|KAD_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:217]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/sp_B1VAC7_KAD_PHYAS.eps"
plot "./TMHMM_187945/sp_B1VAC7_KAD_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
