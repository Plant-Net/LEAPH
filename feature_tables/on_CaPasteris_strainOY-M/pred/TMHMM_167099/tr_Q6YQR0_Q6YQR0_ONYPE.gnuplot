set arrow from 1,1.11 to 28,1.11 nohead lt 4 lw 10
set arrow from 29,1.09 to 51,1.09 nohead lt 1 lw 40
set arrow from 52,1.07 to 57,1.07 nohead lt 3 lw 10
set arrow from 58,1.09 to 77,1.09 nohead lt 1 lw 40
set arrow from 78,1.11 to 91,1.11 nohead lt 4 lw 10
set arrow from 92,1.09 to 114,1.09 nohead lt 1 lw 40
set arrow from 115,1.07 to 139,1.07 nohead lt 3 lw 10
set arrow from 140,1.09 to 162,1.09 nohead lt 1 lw 40
set arrow from 163,1.11 to 197,1.11 nohead lt 4 lw 10
set arrow from 198,1.09 to 217,1.09 nohead lt 1 lw 40
set arrow from 218,1.07 to 224,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQR0|Q6YQR0_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:224]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQR0_Q6YQR0_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQR0_Q6YQR0_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
