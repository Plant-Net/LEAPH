set arrow from 1,1.07 to 23,1.07 nohead lt 3 lw 10
set arrow from 24,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 52,1.11 nohead lt 4 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.07 to 83,1.07 nohead lt 3 lw 10
set arrow from 84,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.11 to 115,1.11 nohead lt 4 lw 10
set arrow from 116,1.09 to 133,1.09 nohead lt 1 lw 40
set arrow from 134,1.07 to 144,1.07 nohead lt 3 lw 10
set arrow from 145,1.09 to 164,1.09 nohead lt 1 lw 40
set arrow from 165,1.11 to 183,1.11 nohead lt 4 lw 10
set arrow from 184,1.09 to 206,1.09 nohead lt 1 lw 40
set arrow from 207,1.07 to 210,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YRK8|Q6YRK8_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:210]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YRK8_Q6YRK8_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YRK8_Q6YRK8_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
