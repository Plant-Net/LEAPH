set arrow from 1,1.07 to 26,1.07 nohead lt 3 lw 10
set arrow from 27,1.09 to 49,1.09 nohead lt 1 lw 40
set arrow from 50,1.11 to 94,1.11 nohead lt 4 lw 10
set arrow from 95,1.09 to 117,1.09 nohead lt 1 lw 40
set arrow from 118,1.07 to 129,1.07 nohead lt 3 lw 10
set arrow from 130,1.09 to 152,1.09 nohead lt 1 lw 40
set arrow from 153,1.11 to 171,1.11 nohead lt 4 lw 10
set arrow from 172,1.09 to 194,1.09 nohead lt 1 lw 40
set arrow from 195,1.07 to 213,1.07 nohead lt 3 lw 10
set arrow from 214,1.09 to 236,1.09 nohead lt 1 lw 40
set arrow from 237,1.11 to 265,1.11 nohead lt 4 lw 10
set arrow from 266,1.09 to 288,1.09 nohead lt 1 lw 40
set arrow from 289,1.07 to 303,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93143.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:303]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93143.1.eps"
plot "./TMHMM_278092/USQ93143.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
