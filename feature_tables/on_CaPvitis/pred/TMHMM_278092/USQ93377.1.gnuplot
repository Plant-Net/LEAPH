set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.07 to 40,1.07 nohead lt 3 lw 10
set arrow from 41,1.09 to 60,1.09 nohead lt 1 lw 40
set arrow from 61,1.11 to 63,1.11 nohead lt 4 lw 10
set arrow from 64,1.09 to 86,1.09 nohead lt 1 lw 40
set arrow from 87,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 120,1.09 nohead lt 1 lw 40
set arrow from 121,1.11 to 134,1.11 nohead lt 4 lw 10
set arrow from 135,1.09 to 157,1.09 nohead lt 1 lw 40
set arrow from 158,1.07 to 169,1.07 nohead lt 3 lw 10
set arrow from 170,1.09 to 192,1.09 nohead lt 1 lw 40
set arrow from 193,1.11 to 196,1.11 nohead lt 4 lw 10
set arrow from 197,1.09 to 219,1.09 nohead lt 1 lw 40
set arrow from 220,1.07 to 225,1.07 nohead lt 3 lw 10
set arrow from 226,1.09 to 248,1.09 nohead lt 1 lw 40
set arrow from 249,1.11 to 251,1.11 nohead lt 4 lw 10
set arrow from 252,1.09 to 270,1.09 nohead lt 1 lw 40
set arrow from 271,1.07 to 368,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93377.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:368]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93377.1.eps"
plot "./TMHMM_278092/USQ93377.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
