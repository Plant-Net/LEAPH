set arrow from 1,1.11 to 24,1.11 nohead lt 4 lw 10
set arrow from 25,1.09 to 47,1.09 nohead lt 1 lw 40
set arrow from 48,1.07 to 203,1.07 nohead lt 3 lw 10
set arrow from 204,1.09 to 226,1.09 nohead lt 1 lw 40
set arrow from 227,1.11 to 230,1.11 nohead lt 4 lw 10
set arrow from 231,1.09 to 250,1.09 nohead lt 1 lw 40
set arrow from 251,1.07 to 257,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YR54|Q6YR54_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:257]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YR54_Q6YR54_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YR54_Q6YR54_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
