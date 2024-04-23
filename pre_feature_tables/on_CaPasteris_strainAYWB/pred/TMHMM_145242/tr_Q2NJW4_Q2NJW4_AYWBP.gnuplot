set arrow from 1,1.07 to 4,1.07 nohead lt 3 lw 10
set arrow from 5,1.09 to 22,1.09 nohead lt 1 lw 40
set arrow from 23,1.11 to 31,1.11 nohead lt 4 lw 10
set arrow from 32,1.09 to 54,1.09 nohead lt 1 lw 40
set arrow from 55,1.07 to 60,1.07 nohead lt 3 lw 10
set arrow from 61,1.09 to 83,1.09 nohead lt 1 lw 40
set arrow from 84,1.11 to 139,1.11 nohead lt 4 lw 10
set arrow from 140,1.09 to 162,1.09 nohead lt 1 lw 40
set arrow from 163,1.07 to 174,1.07 nohead lt 3 lw 10
set arrow from 175,1.09 to 194,1.09 nohead lt 1 lw 40
set arrow from 195,1.11 to 197,1.11 nohead lt 4 lw 10
set arrow from 198,1.09 to 217,1.09 nohead lt 1 lw 40
set arrow from 218,1.07 to 224,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJW4|Q2NJW4_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:224]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJW4_Q2NJW4_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJW4_Q2NJW4_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
