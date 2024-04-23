set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 40,1.09 nohead lt 1 lw 40
set arrow from 41,1.11 to 390,1.11 nohead lt 4 lw 10
set arrow from 391,1.09 to 413,1.09 nohead lt 1 lw 40
set arrow from 414,1.07 to 433,1.07 nohead lt 3 lw 10
set arrow from 434,1.09 to 456,1.09 nohead lt 1 lw 40
set arrow from 457,1.11 to 470,1.11 nohead lt 4 lw 10
set arrow from 471,1.09 to 491,1.09 nohead lt 1 lw 40
set arrow from 492,1.07 to 568,1.07 nohead lt 3 lw 10
set arrow from 569,1.09 to 591,1.09 nohead lt 1 lw 40
set arrow from 592,1.11 to 601,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YRD7|Q6YRD7_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:601]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YRD7_Q6YRD7_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YRD7_Q6YRD7_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
