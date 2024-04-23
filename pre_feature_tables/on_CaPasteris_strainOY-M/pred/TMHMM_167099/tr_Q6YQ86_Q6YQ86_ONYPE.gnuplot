set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 320,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQ86|Q6YQ86_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:320]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQ86_Q6YQ86_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQ86_Q6YQ86_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
