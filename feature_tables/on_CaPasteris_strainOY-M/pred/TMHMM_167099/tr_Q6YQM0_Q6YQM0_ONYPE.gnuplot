set arrow from 1,1.07 to 27,1.07 nohead lt 3 lw 10
set arrow from 28,1.09 to 50,1.09 nohead lt 1 lw 40
set arrow from 51,1.11 to 59,1.11 nohead lt 4 lw 10
set arrow from 60,1.09 to 82,1.09 nohead lt 1 lw 40
set arrow from 83,1.07 to 88,1.07 nohead lt 3 lw 10
set arrow from 89,1.09 to 111,1.09 nohead lt 1 lw 40
set arrow from 112,1.11 to 139,1.11 nohead lt 4 lw 10
set arrow from 140,1.09 to 162,1.09 nohead lt 1 lw 40
set arrow from 163,1.07 to 174,1.07 nohead lt 3 lw 10
set arrow from 175,1.09 to 194,1.09 nohead lt 1 lw 40
set arrow from 195,1.11 to 197,1.11 nohead lt 4 lw 10
set arrow from 198,1.09 to 217,1.09 nohead lt 1 lw 40
set arrow from 218,1.07 to 224,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQM0|Q6YQM0_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:224]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQM0_Q6YQM0_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQM0_Q6YQM0_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
