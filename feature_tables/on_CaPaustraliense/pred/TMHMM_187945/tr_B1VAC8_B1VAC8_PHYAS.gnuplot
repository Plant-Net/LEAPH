set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 60,1.11 nohead lt 4 lw 10
set arrow from 61,1.09 to 79,1.09 nohead lt 1 lw 40
set arrow from 80,1.07 to 99,1.07 nohead lt 3 lw 10
set arrow from 100,1.09 to 119,1.09 nohead lt 1 lw 40
set arrow from 120,1.11 to 133,1.11 nohead lt 4 lw 10
set arrow from 134,1.09 to 156,1.09 nohead lt 1 lw 40
set arrow from 157,1.07 to 162,1.07 nohead lt 3 lw 10
set arrow from 163,1.09 to 185,1.09 nohead lt 1 lw 40
set arrow from 186,1.11 to 206,1.11 nohead lt 4 lw 10
set arrow from 207,1.09 to 229,1.09 nohead lt 1 lw 40
set arrow from 230,1.07 to 255,1.07 nohead lt 3 lw 10
set arrow from 256,1.09 to 278,1.09 nohead lt 1 lw 40
set arrow from 279,1.11 to 292,1.11 nohead lt 4 lw 10
set arrow from 293,1.09 to 315,1.09 nohead lt 1 lw 40
set arrow from 316,1.07 to 345,1.07 nohead lt 3 lw 10
set arrow from 346,1.09 to 368,1.09 nohead lt 1 lw 40
set arrow from 369,1.11 to 382,1.11 nohead lt 4 lw 10
set arrow from 383,1.09 to 405,1.09 nohead lt 1 lw 40
set arrow from 406,1.07 to 415,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAC8|B1VAC8_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:415]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAC8_B1VAC8_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAC8_B1VAC8_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
