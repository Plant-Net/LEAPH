set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 49,1.11 nohead lt 4 lw 10
set arrow from 50,1.09 to 72,1.09 nohead lt 1 lw 40
set arrow from 73,1.07 to 78,1.07 nohead lt 3 lw 10
set arrow from 79,1.09 to 101,1.09 nohead lt 1 lw 40
set arrow from 102,1.11 to 115,1.11 nohead lt 4 lw 10
set arrow from 116,1.09 to 135,1.09 nohead lt 1 lw 40
set arrow from 136,1.07 to 146,1.07 nohead lt 3 lw 10
set arrow from 147,1.09 to 166,1.09 nohead lt 1 lw 40
set arrow from 167,1.11 to 199,1.11 nohead lt 4 lw 10
set arrow from 200,1.09 to 222,1.09 nohead lt 1 lw 40
set arrow from 223,1.07 to 230,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93244.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:230]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93244.1.eps"
plot "./TMHMM_278092/USQ93244.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
