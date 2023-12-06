set arrow from 1,1.07 to 87,1.07 nohead lt 3 lw 10
set arrow from 88,1.09 to 107,1.09 nohead lt 1 lw 40
set arrow from 108,1.11 to 168,1.11 nohead lt 4 lw 10
set arrow from 169,1.09 to 191,1.09 nohead lt 1 lw 40
set arrow from 192,1.07 to 313,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPN1|Q6YPN1_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:313]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPN1_Q6YPN1_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPN1_Q6YPN1_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
