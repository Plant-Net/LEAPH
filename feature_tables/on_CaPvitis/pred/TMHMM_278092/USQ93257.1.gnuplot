set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.11 to 46,1.11 nohead lt 4 lw 10
set arrow from 47,1.09 to 69,1.09 nohead lt 1 lw 40
set arrow from 70,1.07 to 81,1.07 nohead lt 3 lw 10
set arrow from 82,1.09 to 99,1.09 nohead lt 1 lw 40
set arrow from 100,1.11 to 103,1.11 nohead lt 4 lw 10
set arrow from 104,1.09 to 123,1.09 nohead lt 1 lw 40
set arrow from 124,1.07 to 135,1.07 nohead lt 3 lw 10
set arrow from 136,1.09 to 158,1.09 nohead lt 1 lw 40
set arrow from 159,1.11 to 162,1.11 nohead lt 4 lw 10
set arrow from 163,1.09 to 185,1.09 nohead lt 1 lw 40
set arrow from 186,1.07 to 189,1.07 nohead lt 3 lw 10
set arrow from 190,1.09 to 212,1.09 nohead lt 1 lw 40
set arrow from 213,1.11 to 213,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93257.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:213]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93257.1.eps"
plot "./TMHMM_278092/USQ93257.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
