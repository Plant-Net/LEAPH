set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 52,1.11 nohead lt 4 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.07 to 81,1.07 nohead lt 3 lw 10
set arrow from 82,1.09 to 104,1.09 nohead lt 1 lw 40
set arrow from 105,1.11 to 132,1.11 nohead lt 4 lw 10
set arrow from 133,1.09 to 155,1.09 nohead lt 1 lw 40
set arrow from 156,1.07 to 175,1.07 nohead lt 3 lw 10
set arrow from 176,1.09 to 198,1.09 nohead lt 1 lw 40
set arrow from 199,1.11 to 204,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378675"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:204]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378675.eps"
plot "./TMHMM_62292/2570378675.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
