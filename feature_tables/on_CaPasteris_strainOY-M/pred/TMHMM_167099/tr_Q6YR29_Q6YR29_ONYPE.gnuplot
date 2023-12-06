set arrow from 1,1.07 to 23,1.07 nohead lt 3 lw 10
set arrow from 24,1.09 to 46,1.09 nohead lt 1 lw 40
set arrow from 47,1.11 to 90,1.11 nohead lt 4 lw 10
set arrow from 91,1.09 to 113,1.09 nohead lt 1 lw 40
set arrow from 114,1.07 to 119,1.07 nohead lt 3 lw 10
set arrow from 120,1.09 to 142,1.09 nohead lt 1 lw 40
set arrow from 143,1.11 to 151,1.11 nohead lt 4 lw 10
set arrow from 152,1.09 to 170,1.09 nohead lt 1 lw 40
set arrow from 171,1.07 to 205,1.07 nohead lt 3 lw 10
set arrow from 206,1.09 to 228,1.09 nohead lt 1 lw 40
set arrow from 229,1.11 to 267,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YR29|Q6YR29_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:267]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YR29_Q6YR29_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YR29_Q6YR29_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
