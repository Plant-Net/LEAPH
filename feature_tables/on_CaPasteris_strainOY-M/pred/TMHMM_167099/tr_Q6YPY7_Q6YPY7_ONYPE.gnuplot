set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 40,1.09 nohead lt 1 lw 40
set arrow from 41,1.11 to 366,1.11 nohead lt 4 lw 10
set arrow from 367,1.09 to 389,1.09 nohead lt 1 lw 40
set arrow from 390,1.07 to 409,1.07 nohead lt 3 lw 10
set arrow from 410,1.09 to 432,1.09 nohead lt 1 lw 40
set arrow from 433,1.11 to 441,1.11 nohead lt 4 lw 10
set arrow from 442,1.09 to 464,1.09 nohead lt 1 lw 40
set arrow from 465,1.07 to 520,1.07 nohead lt 3 lw 10
set arrow from 521,1.09 to 543,1.09 nohead lt 1 lw 40
set arrow from 544,1.11 to 547,1.11 nohead lt 4 lw 10
set arrow from 548,1.09 to 567,1.09 nohead lt 1 lw 40
set arrow from 568,1.07 to 576,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPY7|Q6YPY7_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:576]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPY7_Q6YPY7_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPY7_Q6YPY7_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
