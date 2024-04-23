set arrow from 1,1.11 to 310,1.11 nohead lt 4 lw 10
set arrow from 311,1.09 to 333,1.09 nohead lt 1 lw 40
set arrow from 334,1.07 to 345,1.07 nohead lt 3 lw 10
set arrow from 346,1.09 to 368,1.09 nohead lt 1 lw 40
set arrow from 369,1.11 to 405,1.11 nohead lt 4 lw 10
set arrow from 406,1.09 to 428,1.09 nohead lt 1 lw 40
set arrow from 429,1.07 to 448,1.07 nohead lt 3 lw 10
set arrow from 449,1.09 to 471,1.09 nohead lt 1 lw 40
set arrow from 472,1.11 to 499,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YRB9|Q6YRB9_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:499]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YRB9_Q6YRB9_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YRB9_Q6YRB9_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
