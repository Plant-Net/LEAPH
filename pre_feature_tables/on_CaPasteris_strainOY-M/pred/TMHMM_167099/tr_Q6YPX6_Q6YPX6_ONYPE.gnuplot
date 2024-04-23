set arrow from 1,1.11 to 308,1.11 nohead lt 4 lw 10
set arrow from 309,1.09 to 331,1.09 nohead lt 1 lw 40
set arrow from 332,1.07 to 351,1.07 nohead lt 3 lw 10
set arrow from 352,1.09 to 374,1.09 nohead lt 1 lw 40
set arrow from 375,1.11 to 377,1.11 nohead lt 4 lw 10
set arrow from 378,1.09 to 397,1.09 nohead lt 1 lw 40
set arrow from 398,1.07 to 425,1.07 nohead lt 3 lw 10
set arrow from 426,1.09 to 448,1.09 nohead lt 1 lw 40
set arrow from 449,1.11 to 503,1.11 nohead lt 4 lw 10
set arrow from 504,1.09 to 526,1.09 nohead lt 1 lw 40
set arrow from 527,1.07 to 542,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPX6|Q6YPX6_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:542]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPX6_Q6YPX6_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPX6_Q6YPX6_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
