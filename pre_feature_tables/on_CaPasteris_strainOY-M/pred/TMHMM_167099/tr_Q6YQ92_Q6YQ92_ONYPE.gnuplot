set arrow from 1,1.11 to 3,1.11 nohead lt 4 lw 10
set arrow from 4,1.09 to 26,1.09 nohead lt 1 lw 40
set arrow from 27,1.07 to 45,1.07 nohead lt 3 lw 10
set arrow from 46,1.09 to 68,1.09 nohead lt 1 lw 40
set arrow from 69,1.11 to 212,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQ92|Q6YQ92_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:212]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQ92_Q6YQ92_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQ92_Q6YQ92_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
