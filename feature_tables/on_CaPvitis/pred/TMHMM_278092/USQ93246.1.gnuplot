set arrow from 1,1.11 to 9,1.11 nohead lt 4 lw 10
set arrow from 10,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.07 to 52,1.07 nohead lt 3 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.11 to 110,1.11 nohead lt 4 lw 10
set arrow from 111,1.09 to 133,1.09 nohead lt 1 lw 40
set arrow from 134,1.07 to 137,1.07 nohead lt 3 lw 10
set arrow from 138,1.09 to 160,1.09 nohead lt 1 lw 40
set arrow from 161,1.11 to 163,1.11 nohead lt 4 lw 10
set arrow from 164,1.09 to 181,1.09 nohead lt 1 lw 40
set arrow from 182,1.07 to 209,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93246.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:209]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93246.1.eps"
plot "./TMHMM_278092/USQ93246.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
