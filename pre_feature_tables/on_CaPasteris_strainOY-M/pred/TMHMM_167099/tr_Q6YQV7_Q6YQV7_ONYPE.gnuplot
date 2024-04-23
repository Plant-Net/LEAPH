set arrow from 1,1.11 to 26,1.11 nohead lt 4 lw 10
set arrow from 27,1.09 to 49,1.09 nohead lt 1 lw 40
set arrow from 50,1.07 to 57,1.07 nohead lt 3 lw 10
set arrow from 58,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.11 to 84,1.11 nohead lt 4 lw 10
set arrow from 85,1.09 to 107,1.09 nohead lt 1 lw 40
set arrow from 108,1.07 to 119,1.07 nohead lt 3 lw 10
set arrow from 120,1.09 to 139,1.09 nohead lt 1 lw 40
set arrow from 140,1.11 to 148,1.11 nohead lt 4 lw 10
set arrow from 149,1.09 to 171,1.09 nohead lt 1 lw 40
set arrow from 172,1.07 to 191,1.07 nohead lt 3 lw 10
set arrow from 192,1.09 to 214,1.09 nohead lt 1 lw 40
set arrow from 215,1.11 to 222,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQV7|Q6YQV7_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:222]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQV7_Q6YQV7_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQV7_Q6YQV7_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
