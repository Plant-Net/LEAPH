set arrow from 1,1.07 to 4,1.07 nohead lt 3 lw 10
set arrow from 5,1.09 to 27,1.09 nohead lt 1 lw 40
set arrow from 28,1.11 to 385,1.11 nohead lt 4 lw 10
set arrow from 386,1.09 to 408,1.09 nohead lt 1 lw 40
set arrow from 409,1.07 to 419,1.07 nohead lt 3 lw 10
set arrow from 420,1.09 to 439,1.09 nohead lt 1 lw 40
set arrow from 440,1.11 to 442,1.11 nohead lt 4 lw 10
set arrow from 443,1.09 to 460,1.09 nohead lt 1 lw 40
set arrow from 461,1.07 to 466,1.07 nohead lt 3 lw 10
set arrow from 467,1.09 to 486,1.09 nohead lt 1 lw 40
set arrow from 487,1.11 to 563,1.11 nohead lt 4 lw 10
set arrow from 564,1.09 to 586,1.09 nohead lt 1 lw 40
set arrow from 587,1.07 to 597,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQB9|Q6YQB9_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:597]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQB9_Q6YQB9_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQB9_Q6YQB9_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
