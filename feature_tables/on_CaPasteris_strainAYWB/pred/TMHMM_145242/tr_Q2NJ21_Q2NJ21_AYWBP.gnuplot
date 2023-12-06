set arrow from 1,1.07 to 34,1.07 nohead lt 3 lw 10
set arrow from 35,1.09 to 57,1.09 nohead lt 1 lw 40
set arrow from 58,1.11 to 66,1.11 nohead lt 4 lw 10
set arrow from 67,1.09 to 89,1.09 nohead lt 1 lw 40
set arrow from 90,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 120,1.09 nohead lt 1 lw 40
set arrow from 121,1.11 to 124,1.11 nohead lt 4 lw 10
set arrow from 125,1.09 to 147,1.09 nohead lt 1 lw 40
set arrow from 148,1.07 to 159,1.07 nohead lt 3 lw 10
set arrow from 160,1.09 to 179,1.09 nohead lt 1 lw 40
set arrow from 180,1.11 to 188,1.11 nohead lt 4 lw 10
set arrow from 189,1.09 to 211,1.09 nohead lt 1 lw 40
set arrow from 212,1.07 to 231,1.07 nohead lt 3 lw 10
set arrow from 232,1.09 to 254,1.09 nohead lt 1 lw 40
set arrow from 255,1.11 to 262,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJ21|Q2NJ21_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:262]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJ21_Q2NJ21_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJ21_Q2NJ21_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
