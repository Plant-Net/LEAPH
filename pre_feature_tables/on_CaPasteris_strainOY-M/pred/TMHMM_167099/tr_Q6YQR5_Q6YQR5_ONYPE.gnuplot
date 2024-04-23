set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 31,1.09 nohead lt 1 lw 40
set arrow from 32,1.11 to 40,1.11 nohead lt 4 lw 10
set arrow from 41,1.09 to 60,1.09 nohead lt 1 lw 40
set arrow from 61,1.07 to 66,1.07 nohead lt 3 lw 10
set arrow from 67,1.09 to 89,1.09 nohead lt 1 lw 40
set arrow from 90,1.11 to 108,1.11 nohead lt 4 lw 10
set arrow from 109,1.09 to 128,1.09 nohead lt 1 lw 40
set arrow from 129,1.07 to 140,1.07 nohead lt 3 lw 10
set arrow from 141,1.09 to 163,1.09 nohead lt 1 lw 40
set arrow from 164,1.11 to 188,1.11 nohead lt 4 lw 10
set arrow from 189,1.09 to 211,1.09 nohead lt 1 lw 40
set arrow from 212,1.07 to 227,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQR5|Q6YQR5_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:227]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQR5_Q6YQR5_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQR5_Q6YQR5_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
