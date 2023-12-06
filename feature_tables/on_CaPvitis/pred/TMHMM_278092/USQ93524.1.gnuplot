set arrow from 1,1.07 to 37,1.07 nohead lt 3 lw 10
set arrow from 38,1.09 to 60,1.09 nohead lt 1 lw 40
set arrow from 61,1.11 to 69,1.11 nohead lt 4 lw 10
set arrow from 70,1.09 to 92,1.09 nohead lt 1 lw 40
set arrow from 93,1.07 to 98,1.07 nohead lt 3 lw 10
set arrow from 99,1.09 to 121,1.09 nohead lt 1 lw 40
set arrow from 122,1.11 to 124,1.11 nohead lt 4 lw 10
set arrow from 125,1.09 to 147,1.09 nohead lt 1 lw 40
set arrow from 148,1.07 to 163,1.07 nohead lt 3 lw 10
set arrow from 164,1.09 to 181,1.09 nohead lt 1 lw 40
set arrow from 182,1.11 to 184,1.11 nohead lt 4 lw 10
set arrow from 185,1.09 to 207,1.09 nohead lt 1 lw 40
set arrow from 208,1.07 to 227,1.07 nohead lt 3 lw 10
set arrow from 228,1.09 to 250,1.09 nohead lt 1 lw 40
set arrow from 251,1.11 to 257,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93524.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:257]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93524.1.eps"
plot "./TMHMM_278092/USQ93524.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
