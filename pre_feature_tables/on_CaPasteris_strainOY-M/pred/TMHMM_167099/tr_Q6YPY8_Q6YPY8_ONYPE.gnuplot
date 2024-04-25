set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 82,1.11 nohead lt 4 lw 10
set arrow from 83,1.09 to 105,1.09 nohead lt 1 lw 40
set arrow from 106,1.07 to 116,1.07 nohead lt 3 lw 10
set arrow from 117,1.09 to 134,1.09 nohead lt 1 lw 40
set arrow from 135,1.11 to 137,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPY8|Q6YPY8_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:137]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPY8_Q6YPY8_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPY8_Q6YPY8_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit