set arrow from 1,1.07 to 1,1.07 nohead lt 3 lw 10
set arrow from 2,1.09 to 21,1.09 nohead lt 1 lw 40
set arrow from 22,1.11 to 57,1.11 nohead lt 4 lw 10
set arrow from 58,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.07 to 86,1.07 nohead lt 3 lw 10
set arrow from 87,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.11 to 125,1.11 nohead lt 4 lw 10
set arrow from 126,1.09 to 148,1.09 nohead lt 1 lw 40
set arrow from 149,1.07 to 184,1.07 nohead lt 3 lw 10
set arrow from 185,1.09 to 207,1.09 nohead lt 1 lw 40
set arrow from 208,1.11 to 226,1.11 nohead lt 4 lw 10
set arrow from 227,1.09 to 249,1.09 nohead lt 1 lw 40
set arrow from 250,1.07 to 264,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPH7|Q6YPH7_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:264]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPH7_Q6YPH7_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPH7_Q6YPH7_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
