set arrow from 1,1.07 to 68,1.07 nohead lt 3 lw 10
set arrow from 69,1.09 to 88,1.09 nohead lt 1 lw 40
set arrow from 89,1.11 to 102,1.11 nohead lt 4 lw 10
set arrow from 103,1.09 to 122,1.09 nohead lt 1 lw 40
set arrow from 123,1.07 to 216,1.07 nohead lt 3 lw 10
set arrow from 217,1.09 to 236,1.09 nohead lt 1 lw 40
set arrow from 237,1.11 to 260,1.11 nohead lt 4 lw 10
set arrow from 261,1.09 to 283,1.09 nohead lt 1 lw 40
set arrow from 284,1.07 to 295,1.07 nohead lt 3 lw 10
set arrow from 296,1.09 to 318,1.09 nohead lt 1 lw 40
set arrow from 319,1.11 to 710,1.11 nohead lt 4 lw 10
set arrow from 711,1.09 to 733,1.09 nohead lt 1 lw 40
set arrow from 734,1.07 to 753,1.07 nohead lt 3 lw 10
set arrow from 754,1.09 to 773,1.09 nohead lt 1 lw 40
set arrow from 774,1.11 to 787,1.11 nohead lt 4 lw 10
set arrow from 788,1.09 to 807,1.09 nohead lt 1 lw 40
set arrow from 808,1.07 to 823,1.07 nohead lt 3 lw 10
set arrow from 824,1.09 to 846,1.09 nohead lt 1 lw 40
set arrow from 847,1.11 to 860,1.11 nohead lt 4 lw 10
set arrow from 861,1.09 to 880,1.09 nohead lt 1 lw 40
set arrow from 881,1.07 to 892,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPZ0|Q6YPZ0_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:892]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPZ0_Q6YPZ0_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPZ0_Q6YPZ0_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
