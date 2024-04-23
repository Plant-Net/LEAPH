set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 40,1.09 nohead lt 1 lw 40
set arrow from 41,1.11 to 359,1.11 nohead lt 4 lw 10
set arrow from 360,1.09 to 382,1.09 nohead lt 1 lw 40
set arrow from 383,1.07 to 412,1.07 nohead lt 3 lw 10
set arrow from 413,1.09 to 435,1.09 nohead lt 1 lw 40
set arrow from 436,1.11 to 449,1.11 nohead lt 4 lw 10
set arrow from 450,1.09 to 472,1.09 nohead lt 1 lw 40
set arrow from 473,1.07 to 516,1.07 nohead lt 3 lw 10
set arrow from 517,1.09 to 539,1.09 nohead lt 1 lw 40
set arrow from 540,1.11 to 548,1.11 nohead lt 4 lw 10
set arrow from 549,1.09 to 570,1.09 nohead lt 1 lw 40
set arrow from 571,1.07 to 579,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VA12|B1VA12_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:579]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VA12_B1VA12_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VA12_B1VA12_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
