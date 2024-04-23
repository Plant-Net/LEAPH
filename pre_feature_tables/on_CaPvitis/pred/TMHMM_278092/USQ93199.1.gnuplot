set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 33,1.09 nohead lt 1 lw 40
set arrow from 34,1.11 to 52,1.11 nohead lt 4 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.07 to 123,1.07 nohead lt 3 lw 10
set arrow from 124,1.09 to 146,1.09 nohead lt 1 lw 40
set arrow from 147,1.11 to 149,1.11 nohead lt 4 lw 10
set arrow from 150,1.09 to 172,1.09 nohead lt 1 lw 40
set arrow from 173,1.07 to 220,1.07 nohead lt 3 lw 10
set arrow from 221,1.09 to 238,1.09 nohead lt 1 lw 40
set arrow from 239,1.11 to 240,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93199.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:240]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93199.1.eps"
plot "./TMHMM_278092/USQ93199.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
