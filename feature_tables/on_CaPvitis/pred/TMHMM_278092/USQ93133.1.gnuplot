set arrow from 1,1.11 to 9,1.11 nohead lt 4 lw 10
set arrow from 10,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.07 to 41,1.07 nohead lt 3 lw 10
set arrow from 42,1.09 to 64,1.09 nohead lt 1 lw 40
set arrow from 65,1.11 to 83,1.11 nohead lt 4 lw 10
set arrow from 84,1.09 to 106,1.09 nohead lt 1 lw 40
set arrow from 107,1.07 to 118,1.07 nohead lt 3 lw 10
set arrow from 119,1.09 to 141,1.09 nohead lt 1 lw 40
set arrow from 142,1.11 to 155,1.11 nohead lt 4 lw 10
set arrow from 156,1.09 to 178,1.09 nohead lt 1 lw 40
set arrow from 179,1.07 to 192,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93133.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:192]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93133.1.eps"
plot "./TMHMM_278092/USQ93133.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
