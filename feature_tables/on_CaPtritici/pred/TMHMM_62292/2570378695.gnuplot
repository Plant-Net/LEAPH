set arrow from 1,1.11 to 313,1.11 nohead lt 4 lw 10
set arrow from 314,1.09 to 336,1.09 nohead lt 1 lw 40
set arrow from 337,1.07 to 347,1.07 nohead lt 3 lw 10
set arrow from 348,1.09 to 370,1.09 nohead lt 1 lw 40
set arrow from 371,1.11 to 406,1.11 nohead lt 4 lw 10
set arrow from 407,1.09 to 429,1.09 nohead lt 1 lw 40
set arrow from 430,1.07 to 435,1.07 nohead lt 3 lw 10
set arrow from 436,1.09 to 458,1.09 nohead lt 1 lw 40
set arrow from 459,1.11 to 462,1.11 nohead lt 4 lw 10
set arrow from 463,1.09 to 482,1.09 nohead lt 1 lw 40
set arrow from 483,1.07 to 504,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378695"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:504]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378695.eps"
plot "./TMHMM_62292/2570378695.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
