set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 262,1.11 nohead lt 4 lw 10
set arrow from 263,1.09 to 285,1.09 nohead lt 1 lw 40
set arrow from 286,1.07 to 291,1.07 nohead lt 3 lw 10
set arrow from 292,1.09 to 314,1.09 nohead lt 1 lw 40
set arrow from 315,1.11 to 363,1.11 nohead lt 4 lw 10
set arrow from 364,1.09 to 382,1.09 nohead lt 1 lw 40
set arrow from 383,1.07 to 419,1.07 nohead lt 3 lw 10
set arrow from 420,1.09 to 437,1.09 nohead lt 1 lw 40
set arrow from 438,1.11 to 474,1.11 nohead lt 4 lw 10
set arrow from 475,1.09 to 497,1.09 nohead lt 1 lw 40
set arrow from 498,1.07 to 525,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQX4|Q6YQX4_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:525]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQX4_Q6YQX4_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQX4_Q6YQX4_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
