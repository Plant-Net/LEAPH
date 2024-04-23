set arrow from 1,1.07 to 29,1.07 nohead lt 3 lw 10
set arrow from 30,1.09 to 49,1.09 nohead lt 1 lw 40
set arrow from 50,1.11 to 68,1.11 nohead lt 4 lw 10
set arrow from 69,1.09 to 86,1.09 nohead lt 1 lw 40
set arrow from 87,1.07 to 92,1.07 nohead lt 3 lw 10
set arrow from 93,1.09 to 112,1.09 nohead lt 1 lw 40
set arrow from 113,1.11 to 131,1.11 nohead lt 4 lw 10
set arrow from 132,1.09 to 151,1.09 nohead lt 1 lw 40
set arrow from 152,1.07 to 162,1.07 nohead lt 3 lw 10
set arrow from 163,1.09 to 185,1.09 nohead lt 1 lw 40
set arrow from 186,1.11 to 199,1.11 nohead lt 4 lw 10
set arrow from 200,1.09 to 222,1.09 nohead lt 1 lw 40
set arrow from 223,1.07 to 228,1.07 nohead lt 3 lw 10
set arrow from 229,1.09 to 246,1.09 nohead lt 1 lw 40
set arrow from 247,1.11 to 455,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQR7|Q6YQR7_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:455]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQR7_Q6YQR7_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQR7_Q6YQR7_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
