set arrow from 1,1.07 to 33,1.07 nohead lt 3 lw 10
set arrow from 34,1.09 to 56,1.09 nohead lt 1 lw 40
set arrow from 57,1.11 to 83,1.11 nohead lt 4 lw 10
set arrow from 84,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.07 to 125,1.07 nohead lt 3 lw 10
set arrow from 126,1.09 to 148,1.09 nohead lt 1 lw 40
set arrow from 149,1.11 to 167,1.11 nohead lt 4 lw 10
set arrow from 168,1.09 to 186,1.09 nohead lt 1 lw 40
set arrow from 187,1.07 to 197,1.07 nohead lt 3 lw 10
set arrow from 198,1.09 to 220,1.09 nohead lt 1 lw 40
set arrow from 221,1.11 to 224,1.11 nohead lt 4 lw 10
set arrow from 225,1.09 to 247,1.09 nohead lt 1 lw 40
set arrow from 248,1.07 to 273,1.07 nohead lt 3 lw 10
set arrow from 274,1.09 to 296,1.09 nohead lt 1 lw 40
set arrow from 297,1.11 to 310,1.11 nohead lt 4 lw 10
set arrow from 311,1.09 to 333,1.09 nohead lt 1 lw 40
set arrow from 334,1.07 to 358,1.07 nohead lt 3 lw 10
set arrow from 359,1.09 to 381,1.09 nohead lt 1 lw 40
set arrow from 382,1.11 to 404,1.11 nohead lt 4 lw 10
set arrow from 405,1.09 to 427,1.09 nohead lt 1 lw 40
set arrow from 428,1.07 to 433,1.07 nohead lt 3 lw 10
set arrow from 434,1.09 to 451,1.09 nohead lt 1 lw 40
set arrow from 452,1.11 to 465,1.11 nohead lt 4 lw 10
set arrow from 466,1.09 to 488,1.09 nohead lt 1 lw 40
set arrow from 489,1.07 to 499,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPJ1|Q6YPJ1_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:499]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPJ1_Q6YPJ1_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPJ1_Q6YPJ1_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
