set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.07 to 49,1.07 nohead lt 3 lw 10
set arrow from 50,1.09 to 72,1.09 nohead lt 1 lw 40
set arrow from 73,1.11 to 122,1.11 nohead lt 4 lw 10
set arrow from 123,1.09 to 145,1.09 nohead lt 1 lw 40
set arrow from 146,1.07 to 149,1.07 nohead lt 3 lw 10
set arrow from 150,1.09 to 172,1.09 nohead lt 1 lw 40
set arrow from 173,1.11 to 232,1.11 nohead lt 4 lw 10
set arrow from 233,1.09 to 255,1.09 nohead lt 1 lw 40
set arrow from 256,1.07 to 267,1.07 nohead lt 3 lw 10
set arrow from 268,1.09 to 290,1.09 nohead lt 1 lw 40
set arrow from 291,1.11 to 572,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93342.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:572]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93342.1.eps"
plot "./TMHMM_278092/USQ93342.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
