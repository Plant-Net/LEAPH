set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 102,1.11 nohead lt 4 lw 10
set arrow from 103,1.09 to 125,1.09 nohead lt 1 lw 40
set arrow from 126,1.07 to 136,1.07 nohead lt 3 lw 10
set arrow from 137,1.09 to 159,1.09 nohead lt 1 lw 40
set arrow from 160,1.11 to 231,1.11 nohead lt 4 lw 10
set arrow from 232,1.09 to 254,1.09 nohead lt 1 lw 40
set arrow from 255,1.07 to 281,1.07 nohead lt 3 lw 10
set arrow from 282,1.09 to 304,1.09 nohead lt 1 lw 40
set arrow from 305,1.11 to 315,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIU6|Q2NIU6_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:315]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIU6_Q2NIU6_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIU6_Q2NIU6_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
