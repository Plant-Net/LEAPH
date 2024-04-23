set arrow from 1,1.07 to 56,1.07 nohead lt 3 lw 10
set arrow from 57,1.09 to 79,1.09 nohead lt 1 lw 40
set arrow from 80,1.11 to 83,1.11 nohead lt 4 lw 10
set arrow from 84,1.09 to 101,1.09 nohead lt 1 lw 40
set arrow from 102,1.07 to 248,1.07 nohead lt 3 lw 10
set arrow from 249,1.09 to 271,1.09 nohead lt 1 lw 40
set arrow from 272,1.11 to 285,1.11 nohead lt 4 lw 10
set arrow from 286,1.09 to 308,1.09 nohead lt 1 lw 40
set arrow from 309,1.07 to 710,1.07 nohead lt 3 lw 10
set arrow from 711,1.09 to 733,1.09 nohead lt 1 lw 40
set arrow from 734,1.11 to 737,1.11 nohead lt 4 lw 10
set arrow from 738,1.09 to 760,1.09 nohead lt 1 lw 40
set arrow from 761,1.07 to 787,1.07 nohead lt 3 lw 10
set arrow from 788,1.09 to 810,1.09 nohead lt 1 lw 40
set arrow from 811,1.11 to 829,1.11 nohead lt 4 lw 10
set arrow from 830,1.09 to 852,1.09 nohead lt 1 lw 40
set arrow from 853,1.07 to 868,1.07 nohead lt 3 lw 10
set arrow from 869,1.09 to 886,1.09 nohead lt 1 lw 40
set arrow from 887,1.11 to 900,1.11 nohead lt 4 lw 10
set arrow from 901,1.09 to 923,1.09 nohead lt 1 lw 40
set arrow from 924,1.07 to 939,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93537.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:939]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93537.1.eps"
plot "./TMHMM_278092/USQ93537.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
