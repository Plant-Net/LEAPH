set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 25,1.09 nohead lt 1 lw 40
set arrow from 26,1.11 to 67,1.11 nohead lt 4 lw 10
set arrow from 68,1.09 to 87,1.09 nohead lt 1 lw 40
set arrow from 88,1.07 to 107,1.07 nohead lt 3 lw 10
set arrow from 108,1.09 to 130,1.09 nohead lt 1 lw 40
set arrow from 131,1.11 to 134,1.11 nohead lt 4 lw 10
set arrow from 135,1.09 to 157,1.09 nohead lt 1 lw 40
set arrow from 158,1.07 to 163,1.07 nohead lt 3 lw 10
set arrow from 164,1.09 to 186,1.09 nohead lt 1 lw 40
set arrow from 187,1.11 to 205,1.11 nohead lt 4 lw 10
set arrow from 206,1.09 to 224,1.09 nohead lt 1 lw 40
set arrow from 225,1.07 to 230,1.07 nohead lt 3 lw 10
set arrow from 231,1.09 to 253,1.09 nohead lt 1 lw 40
set arrow from 254,1.11 to 280,1.11 nohead lt 4 lw 10
set arrow from 281,1.09 to 298,1.09 nohead lt 1 lw 40
set arrow from 299,1.07 to 300,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA76|B1VA76_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:300]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA76_B1VA76_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA76_B1VA76_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
