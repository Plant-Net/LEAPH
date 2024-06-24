set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.11 to 70,1.11 nohead lt 4 lw 10
set arrow from 71,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.07 to 99,1.07 nohead lt 3 lw 10
set arrow from 100,1.09 to 119,1.09 nohead lt 1 lw 40
set arrow from 120,1.11 to 140,1.11 nohead lt 4 lw 10
set arrow from 141,1.09 to 160,1.09 nohead lt 1 lw 40
set arrow from 161,1.07 to 180,1.07 nohead lt 3 lw 10
set arrow from 181,1.09 to 203,1.09 nohead lt 1 lw 40
set arrow from 204,1.11 to 212,1.11 nohead lt 4 lw 10
set arrow from 213,1.09 to 230,1.09 nohead lt 1 lw 40
set arrow from 231,1.07 to 243,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93442.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:243]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93442.1.eps"
plot "./TMHMM_278092/USQ93442.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
