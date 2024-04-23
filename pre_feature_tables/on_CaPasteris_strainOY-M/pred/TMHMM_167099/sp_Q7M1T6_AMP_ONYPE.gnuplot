set arrow from 1,1.07 to 8,1.07 nohead lt 3 lw 10
set arrow from 9,1.09 to 31,1.09 nohead lt 1 lw 40
set arrow from 32,1.11 to 203,1.11 nohead lt 4 lw 10
set arrow from 204,1.09 to 226,1.09 nohead lt 1 lw 40
set arrow from 227,1.07 to 233,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for sp|Q7M1T6|AMP_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:233]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/sp_Q7M1T6_AMP_ONYPE.eps"
plot "./TMHMM_167099/sp_Q7M1T6_AMP_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
