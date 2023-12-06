set arrow from 1,1.07 to 16,1.07 nohead lt 3 lw 10
set arrow from 17,1.09 to 39,1.09 nohead lt 1 lw 40
set arrow from 40,1.11 to 214,1.11 nohead lt 4 lw 10
set arrow from 215,1.09 to 234,1.09 nohead lt 1 lw 40
set arrow from 235,1.07 to 242,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIR9|Q2NIR9_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:242]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIR9_Q2NIR9_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIR9_Q2NIR9_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
