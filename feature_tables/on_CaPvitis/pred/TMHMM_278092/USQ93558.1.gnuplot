set arrow from 1,1.07 to 15,1.07 nohead lt 3 lw 10
set arrow from 16,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 47,1.11 nohead lt 4 lw 10
set arrow from 48,1.09 to 70,1.09 nohead lt 1 lw 40
set arrow from 71,1.07 to 76,1.07 nohead lt 3 lw 10
set arrow from 77,1.09 to 99,1.09 nohead lt 1 lw 40
set arrow from 100,1.11 to 113,1.11 nohead lt 4 lw 10
set arrow from 114,1.09 to 133,1.09 nohead lt 1 lw 40
set arrow from 134,1.07 to 145,1.07 nohead lt 3 lw 10
set arrow from 146,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.11 to 187,1.11 nohead lt 4 lw 10
set arrow from 188,1.09 to 210,1.09 nohead lt 1 lw 40
set arrow from 211,1.07 to 222,1.07 nohead lt 3 lw 10
set arrow from 223,1.09 to 245,1.09 nohead lt 1 lw 40
set arrow from 246,1.11 to 315,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93558.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:315]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93558.1.eps"
plot "./TMHMM_278092/USQ93558.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
