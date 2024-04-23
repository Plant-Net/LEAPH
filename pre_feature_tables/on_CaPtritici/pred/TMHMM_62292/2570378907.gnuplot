set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.11 to 351,1.11 nohead lt 4 lw 10
set arrow from 352,1.09 to 374,1.09 nohead lt 1 lw 40
set arrow from 375,1.07 to 394,1.07 nohead lt 3 lw 10
set arrow from 395,1.09 to 417,1.09 nohead lt 1 lw 40
set arrow from 418,1.11 to 426,1.11 nohead lt 4 lw 10
set arrow from 427,1.09 to 449,1.09 nohead lt 1 lw 40
set arrow from 450,1.07 to 497,1.07 nohead lt 3 lw 10
set arrow from 498,1.09 to 520,1.09 nohead lt 1 lw 40
set arrow from 521,1.11 to 534,1.11 nohead lt 4 lw 10
set arrow from 535,1.09 to 552,1.09 nohead lt 1 lw 40
set arrow from 553,1.07 to 561,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378907"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:561]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378907.eps"
plot "./TMHMM_62292/2570378907.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
