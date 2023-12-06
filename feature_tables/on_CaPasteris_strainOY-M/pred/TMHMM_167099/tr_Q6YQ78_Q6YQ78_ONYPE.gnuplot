set arrow from 1,1.07 to 4,1.07 nohead lt 3 lw 10
set arrow from 5,1.09 to 23,1.09 nohead lt 1 lw 40
set arrow from 24,1.11 to 32,1.11 nohead lt 4 lw 10
set arrow from 33,1.09 to 55,1.09 nohead lt 1 lw 40
set arrow from 56,1.07 to 88,1.07 nohead lt 3 lw 10
set arrow from 89,1.09 to 111,1.09 nohead lt 1 lw 40
set arrow from 112,1.11 to 120,1.11 nohead lt 4 lw 10
set arrow from 121,1.09 to 143,1.09 nohead lt 1 lw 40
set arrow from 144,1.07 to 147,1.07 nohead lt 3 lw 10
set arrow from 148,1.09 to 165,1.09 nohead lt 1 lw 40
set arrow from 166,1.11 to 168,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQ78|Q6YQ78_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:168]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQ78_Q6YQ78_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQ78_Q6YQ78_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
