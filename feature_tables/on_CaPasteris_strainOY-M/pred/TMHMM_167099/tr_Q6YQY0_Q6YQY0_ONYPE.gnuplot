set arrow from 1,1.11 to 67,1.11 nohead lt 4 lw 10
set arrow from 68,1.09 to 87,1.09 nohead lt 1 lw 40
set arrow from 88,1.07 to 95,1.07 nohead lt 3 lw 10
set arrow from 96,1.09 to 118,1.09 nohead lt 1 lw 40
set arrow from 119,1.11 to 132,1.11 nohead lt 4 lw 10
set arrow from 133,1.09 to 152,1.09 nohead lt 1 lw 40
set arrow from 153,1.07 to 164,1.07 nohead lt 3 lw 10
set arrow from 165,1.09 to 187,1.09 nohead lt 1 lw 40
set arrow from 188,1.11 to 255,1.11 nohead lt 4 lw 10
set arrow from 256,1.09 to 278,1.09 nohead lt 1 lw 40
set arrow from 279,1.07 to 296,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQY0|Q6YQY0_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:296]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQY0_Q6YQY0_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQY0_Q6YQY0_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
