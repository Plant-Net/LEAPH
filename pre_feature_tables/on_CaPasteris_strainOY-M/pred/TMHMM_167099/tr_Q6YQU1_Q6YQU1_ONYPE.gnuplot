set arrow from 1,1.07 to 18,1.07 nohead lt 3 lw 10
set arrow from 19,1.09 to 41,1.09 nohead lt 1 lw 40
set arrow from 42,1.11 to 70,1.11 nohead lt 4 lw 10
set arrow from 71,1.09 to 88,1.09 nohead lt 1 lw 40
set arrow from 89,1.07 to 108,1.07 nohead lt 3 lw 10
set arrow from 109,1.09 to 131,1.09 nohead lt 1 lw 40
set arrow from 132,1.11 to 145,1.11 nohead lt 4 lw 10
set arrow from 146,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.07 to 176,1.07 nohead lt 3 lw 10
set arrow from 177,1.09 to 199,1.09 nohead lt 1 lw 40
set arrow from 200,1.11 to 208,1.11 nohead lt 4 lw 10
set arrow from 209,1.09 to 231,1.09 nohead lt 1 lw 40
set arrow from 232,1.07 to 254,1.07 nohead lt 3 lw 10
set arrow from 255,1.09 to 277,1.09 nohead lt 1 lw 40
set arrow from 278,1.11 to 286,1.11 nohead lt 4 lw 10
set arrow from 287,1.09 to 309,1.09 nohead lt 1 lw 40
set arrow from 310,1.07 to 331,1.07 nohead lt 3 lw 10
set arrow from 332,1.09 to 354,1.09 nohead lt 1 lw 40
set arrow from 355,1.11 to 385,1.11 nohead lt 4 lw 10
set arrow from 386,1.09 to 403,1.09 nohead lt 1 lw 40
set arrow from 404,1.07 to 409,1.07 nohead lt 3 lw 10
set arrow from 410,1.09 to 432,1.09 nohead lt 1 lw 40
set arrow from 433,1.11 to 446,1.11 nohead lt 4 lw 10
set arrow from 447,1.09 to 469,1.09 nohead lt 1 lw 40
set arrow from 470,1.07 to 494,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQU1|Q6YQU1_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:494]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQU1_Q6YQU1_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQU1_Q6YQU1_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
