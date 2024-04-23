set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 42,1.09 nohead lt 1 lw 40
set arrow from 43,1.11 to 64,1.11 nohead lt 4 lw 10
set arrow from 65,1.09 to 87,1.09 nohead lt 1 lw 40
set arrow from 88,1.07 to 93,1.07 nohead lt 3 lw 10
set arrow from 94,1.09 to 111,1.09 nohead lt 1 lw 40
set arrow from 112,1.11 to 125,1.11 nohead lt 4 lw 10
set arrow from 126,1.09 to 148,1.09 nohead lt 1 lw 40
set arrow from 149,1.07 to 154,1.07 nohead lt 3 lw 10
set arrow from 155,1.09 to 174,1.09 nohead lt 1 lw 40
set arrow from 175,1.11 to 193,1.11 nohead lt 4 lw 10
set arrow from 194,1.09 to 216,1.09 nohead lt 1 lw 40
set arrow from 217,1.07 to 288,1.07 nohead lt 3 lw 10
set arrow from 289,1.09 to 311,1.09 nohead lt 1 lw 40
set arrow from 312,1.11 to 325,1.11 nohead lt 4 lw 10
set arrow from 326,1.09 to 348,1.09 nohead lt 1 lw 40
set arrow from 349,1.07 to 349,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YR38|Q6YR38_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:349]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YR38_Q6YR38_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YR38_Q6YR38_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
