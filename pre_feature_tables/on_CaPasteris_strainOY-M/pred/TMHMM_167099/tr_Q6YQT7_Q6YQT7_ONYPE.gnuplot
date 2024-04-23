set arrow from 1,1.11 to 37,1.11 nohead lt 4 lw 10
set arrow from 38,1.09 to 57,1.09 nohead lt 1 lw 40
set arrow from 58,1.07 to 69,1.07 nohead lt 3 lw 10
set arrow from 70,1.09 to 92,1.09 nohead lt 1 lw 40
set arrow from 93,1.11 to 106,1.11 nohead lt 4 lw 10
set arrow from 107,1.09 to 129,1.09 nohead lt 1 lw 40
set arrow from 130,1.07 to 149,1.07 nohead lt 3 lw 10
set arrow from 150,1.09 to 172,1.09 nohead lt 1 lw 40
set arrow from 173,1.11 to 226,1.11 nohead lt 4 lw 10
set arrow from 227,1.09 to 249,1.09 nohead lt 1 lw 40
set arrow from 250,1.07 to 291,1.07 nohead lt 3 lw 10
set arrow from 292,1.09 to 314,1.09 nohead lt 1 lw 40
set arrow from 315,1.11 to 323,1.11 nohead lt 4 lw 10
set arrow from 324,1.09 to 346,1.09 nohead lt 1 lw 40
set arrow from 347,1.07 to 352,1.07 nohead lt 3 lw 10
set arrow from 353,1.09 to 375,1.09 nohead lt 1 lw 40
set arrow from 376,1.11 to 381,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQT7|Q6YQT7_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:381]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQT7_Q6YQT7_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQT7_Q6YQT7_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
