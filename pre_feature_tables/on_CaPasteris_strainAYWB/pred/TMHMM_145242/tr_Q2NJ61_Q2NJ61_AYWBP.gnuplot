set arrow from 1,1.07 to 24,1.07 nohead lt 3 lw 10
set arrow from 25,1.09 to 44,1.09 nohead lt 1 lw 40
set arrow from 45,1.11 to 63,1.11 nohead lt 4 lw 10
set arrow from 64,1.09 to 81,1.09 nohead lt 1 lw 40
set arrow from 82,1.07 to 87,1.07 nohead lt 3 lw 10
set arrow from 88,1.09 to 107,1.09 nohead lt 1 lw 40
set arrow from 108,1.11 to 126,1.11 nohead lt 4 lw 10
set arrow from 127,1.09 to 146,1.09 nohead lt 1 lw 40
set arrow from 147,1.07 to 157,1.07 nohead lt 3 lw 10
set arrow from 158,1.09 to 180,1.09 nohead lt 1 lw 40
set arrow from 181,1.11 to 194,1.11 nohead lt 4 lw 10
set arrow from 195,1.09 to 217,1.09 nohead lt 1 lw 40
set arrow from 218,1.07 to 223,1.07 nohead lt 3 lw 10
set arrow from 224,1.09 to 241,1.09 nohead lt 1 lw 40
set arrow from 242,1.11 to 450,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJ61|Q2NJ61_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:450]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJ61_Q2NJ61_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJ61_Q2NJ61_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
