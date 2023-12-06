set arrow from 1,1.07 to 306,1.07 nohead lt 3 lw 10
set arrow from 307,1.09 to 326,1.09 nohead lt 1 lw 40
set arrow from 327,1.11 to 379,1.11 nohead lt 4 lw 10
set arrow from 380,1.09 to 397,1.09 nohead lt 1 lw 40
set arrow from 398,1.07 to 429,1.07 nohead lt 3 lw 10
set arrow from 430,1.09 to 452,1.09 nohead lt 1 lw 40
set arrow from 453,1.11 to 528,1.11 nohead lt 4 lw 10
set arrow from 529,1.09 to 551,1.09 nohead lt 1 lw 40
set arrow from 552,1.07 to 565,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93419.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:565]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93419.1.eps"
plot "./TMHMM_278092/USQ93419.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
