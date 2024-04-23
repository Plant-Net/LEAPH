set arrow from 1,1.07 to 1,1.07 nohead lt 3 lw 10
set arrow from 2,1.09 to 24,1.09 nohead lt 1 lw 40
set arrow from 25,1.11 to 33,1.11 nohead lt 4 lw 10
set arrow from 34,1.09 to 54,1.09 nohead lt 1 lw 40
set arrow from 55,1.07 to 74,1.07 nohead lt 3 lw 10
set arrow from 75,1.09 to 97,1.09 nohead lt 1 lw 40
set arrow from 98,1.11 to 106,1.11 nohead lt 4 lw 10
set arrow from 107,1.09 to 129,1.09 nohead lt 1 lw 40
set arrow from 130,1.07 to 148,1.07 nohead lt 3 lw 10
set arrow from 149,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.11 to 182,1.11 nohead lt 4 lw 10
set arrow from 183,1.09 to 205,1.09 nohead lt 1 lw 40
set arrow from 206,1.07 to 218,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378860"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:218]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378860.eps"
plot "./TMHMM_62292/2570378860.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
