set arrow from 1,1.07 to 25,1.07 nohead lt 3 lw 10
set arrow from 26,1.09 to 48,1.09 nohead lt 1 lw 40
set arrow from 49,1.11 to 188,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YRA4|Q6YRA4_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:188]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YRA4_Q6YRA4_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YRA4_Q6YRA4_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
