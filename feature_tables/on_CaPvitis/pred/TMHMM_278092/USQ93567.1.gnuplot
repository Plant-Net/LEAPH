set arrow from 1,1.07 to 60,1.07 nohead lt 3 lw 10
set arrow from 61,1.09 to 79,1.09 nohead lt 1 lw 40
set arrow from 80,1.11 to 88,1.11 nohead lt 4 lw 10
set arrow from 89,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.07 to 251,1.07 nohead lt 3 lw 10
set arrow from 252,1.09 to 274,1.09 nohead lt 1 lw 40
set arrow from 275,1.11 to 288,1.11 nohead lt 4 lw 10
set arrow from 289,1.09 to 311,1.09 nohead lt 1 lw 40
set arrow from 312,1.07 to 707,1.07 nohead lt 3 lw 10
set arrow from 708,1.09 to 730,1.09 nohead lt 1 lw 40
set arrow from 731,1.11 to 739,1.11 nohead lt 4 lw 10
set arrow from 740,1.09 to 762,1.09 nohead lt 1 lw 40
set arrow from 763,1.07 to 782,1.07 nohead lt 3 lw 10
set arrow from 783,1.09 to 805,1.09 nohead lt 1 lw 40
set arrow from 806,1.11 to 819,1.11 nohead lt 4 lw 10
set arrow from 820,1.09 to 837,1.09 nohead lt 1 lw 40
set arrow from 838,1.07 to 849,1.07 nohead lt 3 lw 10
set arrow from 850,1.09 to 872,1.09 nohead lt 1 lw 40
set arrow from 873,1.11 to 881,1.11 nohead lt 4 lw 10
set arrow from 882,1.09 to 904,1.09 nohead lt 1 lw 40
set arrow from 905,1.07 to 913,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93567.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:913]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93567.1.eps"
plot "./TMHMM_278092/USQ93567.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
