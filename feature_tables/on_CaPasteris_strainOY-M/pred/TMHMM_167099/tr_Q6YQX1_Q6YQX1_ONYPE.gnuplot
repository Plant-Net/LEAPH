set arrow from 1,1.07 to 52,1.07 nohead lt 3 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.11 to 79,1.11 nohead lt 4 lw 10
set arrow from 80,1.09 to 97,1.09 nohead lt 1 lw 40
set arrow from 98,1.07 to 224,1.07 nohead lt 3 lw 10
set arrow from 225,1.09 to 247,1.09 nohead lt 1 lw 40
set arrow from 248,1.11 to 266,1.11 nohead lt 4 lw 10
set arrow from 267,1.09 to 289,1.09 nohead lt 1 lw 40
set arrow from 290,1.07 to 620,1.07 nohead lt 3 lw 10
set arrow from 621,1.09 to 643,1.09 nohead lt 1 lw 40
set arrow from 644,1.11 to 693,1.11 nohead lt 4 lw 10
set arrow from 694,1.09 to 716,1.09 nohead lt 1 lw 40
set arrow from 717,1.07 to 728,1.07 nohead lt 3 lw 10
set arrow from 729,1.09 to 748,1.09 nohead lt 1 lw 40
set arrow from 749,1.11 to 757,1.11 nohead lt 4 lw 10
set arrow from 758,1.09 to 777,1.09 nohead lt 1 lw 40
set arrow from 778,1.07 to 1033,1.07 nohead lt 3 lw 10
set arrow from 1034,1.09 to 1053,1.09 nohead lt 1 lw 40
set arrow from 1054,1.11 to 1056,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQX1|Q6YQX1_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:1056]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQX1_Q6YQX1_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQX1_Q6YQX1_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
