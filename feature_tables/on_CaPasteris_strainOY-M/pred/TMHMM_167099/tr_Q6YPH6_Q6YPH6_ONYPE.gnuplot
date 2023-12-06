set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 40,1.09 nohead lt 1 lw 40
set arrow from 41,1.11 to 83,1.11 nohead lt 4 lw 10
set arrow from 84,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.07 to 118,1.07 nohead lt 3 lw 10
set arrow from 119,1.09 to 141,1.09 nohead lt 1 lw 40
set arrow from 142,1.11 to 176,1.11 nohead lt 4 lw 10
set arrow from 177,1.09 to 199,1.09 nohead lt 1 lw 40
set arrow from 200,1.07 to 219,1.07 nohead lt 3 lw 10
set arrow from 220,1.09 to 242,1.09 nohead lt 1 lw 40
set arrow from 243,1.11 to 284,1.11 nohead lt 4 lw 10
set arrow from 285,1.09 to 307,1.09 nohead lt 1 lw 40
set arrow from 308,1.07 to 313,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPH6|Q6YPH6_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:313]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPH6_Q6YPH6_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPH6_Q6YPH6_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
