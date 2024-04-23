set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 52,1.11 nohead lt 4 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.07 to 87,1.07 nohead lt 3 lw 10
set arrow from 88,1.09 to 107,1.09 nohead lt 1 lw 40
set arrow from 108,1.11 to 126,1.11 nohead lt 4 lw 10
set arrow from 127,1.09 to 146,1.09 nohead lt 1 lw 40
set arrow from 147,1.07 to 152,1.07 nohead lt 3 lw 10
set arrow from 153,1.09 to 172,1.09 nohead lt 1 lw 40
set arrow from 173,1.11 to 175,1.11 nohead lt 4 lw 10
set arrow from 176,1.09 to 195,1.09 nohead lt 1 lw 40
set arrow from 196,1.07 to 201,1.07 nohead lt 3 lw 10
set arrow from 202,1.09 to 221,1.09 nohead lt 1 lw 40
set arrow from 222,1.11 to 231,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YR58|Q6YR58_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:231]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YR58_Q6YR58_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YR58_Q6YR58_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
