set arrow from 1,1.11 to 302,1.11 nohead lt 4 lw 10
set arrow from 303,1.09 to 325,1.09 nohead lt 1 lw 40
set arrow from 326,1.07 to 363,1.07 nohead lt 3 lw 10
set arrow from 364,1.09 to 386,1.09 nohead lt 1 lw 40
set arrow from 387,1.11 to 418,1.11 nohead lt 4 lw 10
set arrow from 419,1.09 to 441,1.09 nohead lt 1 lw 40
set arrow from 442,1.07 to 467,1.07 nohead lt 3 lw 10
set arrow from 468,1.09 to 490,1.09 nohead lt 1 lw 40
set arrow from 491,1.11 to 504,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA91|B1VA91_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:504]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA91_B1VA91_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA91_B1VA91_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
