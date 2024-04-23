set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 86,1.11 nohead lt 4 lw 10
set arrow from 87,1.09 to 109,1.09 nohead lt 1 lw 40
set arrow from 110,1.07 to 115,1.07 nohead lt 3 lw 10
set arrow from 116,1.09 to 134,1.09 nohead lt 1 lw 40
set arrow from 135,1.11 to 153,1.11 nohead lt 4 lw 10
set arrow from 154,1.09 to 176,1.09 nohead lt 1 lw 40
set arrow from 177,1.07 to 213,1.07 nohead lt 3 lw 10
set arrow from 214,1.09 to 236,1.09 nohead lt 1 lw 40
set arrow from 237,1.11 to 255,1.11 nohead lt 4 lw 10
set arrow from 256,1.09 to 278,1.09 nohead lt 1 lw 40
set arrow from 279,1.07 to 293,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIF8|Q2NIF8_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:293]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIF8_Q2NIF8_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIF8_Q2NIF8_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
