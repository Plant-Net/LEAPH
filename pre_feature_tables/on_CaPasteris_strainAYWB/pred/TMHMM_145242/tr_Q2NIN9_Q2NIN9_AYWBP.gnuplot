set arrow from 1,1.11 to 28,1.11 nohead lt 4 lw 10
set arrow from 29,1.09 to 51,1.09 nohead lt 1 lw 40
set arrow from 52,1.07 to 59,1.07 nohead lt 3 lw 10
set arrow from 60,1.09 to 82,1.09 nohead lt 1 lw 40
set arrow from 83,1.11 to 91,1.11 nohead lt 4 lw 10
set arrow from 92,1.09 to 114,1.09 nohead lt 1 lw 40
set arrow from 115,1.07 to 153,1.07 nohead lt 3 lw 10
set arrow from 154,1.09 to 176,1.09 nohead lt 1 lw 40
set arrow from 177,1.11 to 203,1.11 nohead lt 4 lw 10
set arrow from 204,1.09 to 223,1.09 nohead lt 1 lw 40
set arrow from 224,1.07 to 233,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIN9|Q2NIN9_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:233]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIN9_Q2NIN9_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIN9_Q2NIN9_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
