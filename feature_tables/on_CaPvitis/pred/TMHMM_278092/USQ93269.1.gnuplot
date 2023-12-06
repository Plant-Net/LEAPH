set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 32,1.11 nohead lt 4 lw 10
set arrow from 33,1.09 to 55,1.09 nohead lt 1 lw 40
set arrow from 56,1.07 to 66,1.07 nohead lt 3 lw 10
set arrow from 67,1.09 to 89,1.09 nohead lt 1 lw 40
set arrow from 90,1.11 to 115,1.11 nohead lt 4 lw 10
set arrow from 116,1.09 to 135,1.09 nohead lt 1 lw 40
set arrow from 136,1.07 to 141,1.07 nohead lt 3 lw 10
set arrow from 142,1.09 to 164,1.09 nohead lt 1 lw 40
set arrow from 165,1.11 to 168,1.11 nohead lt 4 lw 10
set arrow from 169,1.09 to 191,1.09 nohead lt 1 lw 40
set arrow from 192,1.07 to 211,1.07 nohead lt 3 lw 10
set arrow from 212,1.09 to 234,1.09 nohead lt 1 lw 40
set arrow from 235,1.11 to 277,1.11 nohead lt 4 lw 10
set arrow from 278,1.09 to 295,1.09 nohead lt 1 lw 40
set arrow from 296,1.07 to 300,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93269.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:300]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93269.1.eps"
plot "./TMHMM_278092/USQ93269.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
