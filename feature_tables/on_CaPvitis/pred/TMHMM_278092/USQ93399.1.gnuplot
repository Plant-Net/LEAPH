set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.11 to 43,1.11 nohead lt 4 lw 10
set arrow from 44,1.09 to 66,1.09 nohead lt 1 lw 40
set arrow from 67,1.07 to 104,1.07 nohead lt 3 lw 10
set arrow from 105,1.09 to 122,1.09 nohead lt 1 lw 40
set arrow from 123,1.11 to 126,1.11 nohead lt 4 lw 10
set arrow from 127,1.09 to 149,1.09 nohead lt 1 lw 40
set arrow from 150,1.07 to 169,1.07 nohead lt 3 lw 10
set arrow from 170,1.09 to 192,1.09 nohead lt 1 lw 40
set arrow from 193,1.11 to 211,1.11 nohead lt 4 lw 10
set arrow from 212,1.09 to 234,1.09 nohead lt 1 lw 40
set arrow from 235,1.07 to 261,1.07 nohead lt 3 lw 10
set arrow from 262,1.09 to 284,1.09 nohead lt 1 lw 40
set arrow from 285,1.11 to 287,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93399.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:287]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93399.1.eps"
plot "./TMHMM_278092/USQ93399.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
