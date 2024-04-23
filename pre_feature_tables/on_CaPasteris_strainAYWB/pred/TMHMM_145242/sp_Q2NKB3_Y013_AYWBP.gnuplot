set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.07 to 43,1.07 nohead lt 3 lw 10
set arrow from 44,1.09 to 66,1.09 nohead lt 1 lw 40
set arrow from 67,1.11 to 69,1.11 nohead lt 4 lw 10
set arrow from 70,1.09 to 92,1.09 nohead lt 1 lw 40
set arrow from 93,1.07 to 108,1.07 nohead lt 3 lw 10
set arrow from 109,1.09 to 128,1.09 nohead lt 1 lw 40
set arrow from 129,1.11 to 142,1.11 nohead lt 4 lw 10
set arrow from 143,1.09 to 165,1.09 nohead lt 1 lw 40
set arrow from 166,1.07 to 185,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for sp|Q2NKB3|Y013_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:185]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/sp_Q2NKB3_Y013_AYWBP.eps"
plot "./TMHMM_145242/sp_Q2NKB3_Y013_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
