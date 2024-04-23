set arrow from 1,1.07 to 26,1.07 nohead lt 3 lw 10
set arrow from 27,1.09 to 45,1.09 nohead lt 1 lw 40
set arrow from 46,1.11 to 80,1.11 nohead lt 4 lw 10
set arrow from 81,1.09 to 103,1.09 nohead lt 1 lw 40
set arrow from 104,1.07 to 107,1.07 nohead lt 3 lw 10
set arrow from 108,1.09 to 130,1.09 nohead lt 1 lw 40
set arrow from 131,1.11 to 158,1.11 nohead lt 4 lw 10
set arrow from 159,1.09 to 181,1.09 nohead lt 1 lw 40
set arrow from 182,1.07 to 203,1.07 nohead lt 3 lw 10
set arrow from 204,1.09 to 226,1.09 nohead lt 1 lw 40
set arrow from 227,1.11 to 240,1.11 nohead lt 4 lw 10
set arrow from 241,1.09 to 263,1.09 nohead lt 1 lw 40
set arrow from 264,1.07 to 272,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIU2|Q2NIU2_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:272]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIU2_Q2NIU2_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIU2_Q2NIU2_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
