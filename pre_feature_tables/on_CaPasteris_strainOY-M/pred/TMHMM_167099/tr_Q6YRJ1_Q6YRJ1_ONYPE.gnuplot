set arrow from 1,1.11 to 170,1.11 nohead lt 4 lw 10
set arrow from 171,1.09 to 193,1.09 nohead lt 1 lw 40
set arrow from 194,1.07 to 199,1.07 nohead lt 3 lw 10
set arrow from 200,1.09 to 222,1.09 nohead lt 1 lw 40
set arrow from 223,1.11 to 225,1.11 nohead lt 4 lw 10
set arrow from 226,1.09 to 248,1.09 nohead lt 1 lw 40
set arrow from 249,1.07 to 278,1.07 nohead lt 3 lw 10
set arrow from 279,1.09 to 301,1.09 nohead lt 1 lw 40
set arrow from 302,1.11 to 333,1.11 nohead lt 4 lw 10
set arrow from 334,1.09 to 356,1.09 nohead lt 1 lw 40
set arrow from 357,1.07 to 368,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YRJ1|Q6YRJ1_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:368]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YRJ1_Q6YRJ1_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YRJ1_Q6YRJ1_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
