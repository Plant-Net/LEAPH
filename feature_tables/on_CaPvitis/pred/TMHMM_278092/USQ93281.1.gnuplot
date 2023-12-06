set arrow from 1,1.07 to 21,1.07 nohead lt 3 lw 10
set arrow from 22,1.09 to 41,1.09 nohead lt 1 lw 40
set arrow from 42,1.11 to 60,1.11 nohead lt 4 lw 10
set arrow from 61,1.09 to 83,1.09 nohead lt 1 lw 40
set arrow from 84,1.07 to 94,1.07 nohead lt 3 lw 10
set arrow from 95,1.09 to 117,1.09 nohead lt 1 lw 40
set arrow from 118,1.11 to 131,1.11 nohead lt 4 lw 10
set arrow from 132,1.09 to 151,1.09 nohead lt 1 lw 40
set arrow from 152,1.07 to 162,1.07 nohead lt 3 lw 10
set arrow from 163,1.09 to 185,1.09 nohead lt 1 lw 40
set arrow from 186,1.11 to 204,1.11 nohead lt 4 lw 10
set arrow from 205,1.09 to 227,1.09 nohead lt 1 lw 40
set arrow from 228,1.07 to 233,1.07 nohead lt 3 lw 10
set arrow from 234,1.09 to 256,1.09 nohead lt 1 lw 40
set arrow from 257,1.11 to 443,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93281.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:443]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93281.1.eps"
plot "./TMHMM_278092/USQ93281.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
