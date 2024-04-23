set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 39,1.09 nohead lt 1 lw 40
set arrow from 40,1.11 to 71,1.11 nohead lt 4 lw 10
set arrow from 72,1.09 to 91,1.09 nohead lt 1 lw 40
set arrow from 92,1.07 to 102,1.07 nohead lt 3 lw 10
set arrow from 103,1.09 to 122,1.09 nohead lt 1 lw 40
set arrow from 123,1.11 to 148,1.11 nohead lt 4 lw 10
set arrow from 149,1.09 to 171,1.09 nohead lt 1 lw 40
set arrow from 172,1.07 to 182,1.07 nohead lt 3 lw 10
set arrow from 183,1.09 to 205,1.09 nohead lt 1 lw 40
set arrow from 206,1.11 to 208,1.11 nohead lt 4 lw 10
set arrow from 209,1.09 to 230,1.09 nohead lt 1 lw 40
set arrow from 231,1.07 to 236,1.07 nohead lt 3 lw 10
set arrow from 237,1.09 to 256,1.09 nohead lt 1 lw 40
set arrow from 257,1.11 to 265,1.11 nohead lt 4 lw 10
set arrow from 266,1.09 to 288,1.09 nohead lt 1 lw 40
set arrow from 289,1.07 to 357,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93376.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:357]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93376.1.eps"
plot "./TMHMM_278092/USQ93376.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
