set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 62,1.11 nohead lt 4 lw 10
set arrow from 63,1.09 to 85,1.09 nohead lt 1 lw 40
set arrow from 86,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 117,1.09 nohead lt 1 lw 40
set arrow from 118,1.11 to 124,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93245.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:124]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93245.1.eps"
plot "./TMHMM_278092/USQ93245.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
