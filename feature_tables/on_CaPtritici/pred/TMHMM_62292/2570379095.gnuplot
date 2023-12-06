set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 251,1.11 nohead lt 4 lw 10
set arrow from 252,1.09 to 274,1.09 nohead lt 1 lw 40
set arrow from 275,1.07 to 280,1.07 nohead lt 3 lw 10
set arrow from 281,1.09 to 303,1.09 nohead lt 1 lw 40
set arrow from 304,1.11 to 351,1.11 nohead lt 4 lw 10
set arrow from 352,1.09 to 370,1.09 nohead lt 1 lw 40
set arrow from 371,1.07 to 407,1.07 nohead lt 3 lw 10
set arrow from 408,1.09 to 425,1.09 nohead lt 1 lw 40
set arrow from 426,1.11 to 477,1.11 nohead lt 4 lw 10
set arrow from 478,1.09 to 497,1.09 nohead lt 1 lw 40
set arrow from 498,1.07 to 513,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379095"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:513]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379095.eps"
plot "./TMHMM_62292/2570379095.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
