set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 93,1.11 nohead lt 4 lw 10
set arrow from 94,1.09 to 113,1.09 nohead lt 1 lw 40
set arrow from 114,1.07 to 121,1.07 nohead lt 3 lw 10
set arrow from 122,1.09 to 144,1.09 nohead lt 1 lw 40
set arrow from 145,1.11 to 158,1.11 nohead lt 4 lw 10
set arrow from 159,1.09 to 178,1.09 nohead lt 1 lw 40
set arrow from 179,1.07 to 190,1.07 nohead lt 3 lw 10
set arrow from 191,1.09 to 213,1.09 nohead lt 1 lw 40
set arrow from 214,1.11 to 281,1.11 nohead lt 4 lw 10
set arrow from 282,1.09 to 304,1.09 nohead lt 1 lw 40
set arrow from 305,1.07 to 321,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIZ9|Q2NIZ9_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:321]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIZ9_Q2NIZ9_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIZ9_Q2NIZ9_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
