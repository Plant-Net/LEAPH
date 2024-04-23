set arrow from 1,1.07 to 18,1.07 nohead lt 3 lw 10
set arrow from 19,1.09 to 41,1.09 nohead lt 1 lw 40
set arrow from 42,1.11 to 80,1.11 nohead lt 4 lw 10
set arrow from 81,1.09 to 103,1.09 nohead lt 1 lw 40
set arrow from 104,1.07 to 109,1.07 nohead lt 3 lw 10
set arrow from 110,1.09 to 132,1.09 nohead lt 1 lw 40
set arrow from 133,1.11 to 157,1.11 nohead lt 4 lw 10
set arrow from 158,1.09 to 180,1.09 nohead lt 1 lw 40
set arrow from 181,1.07 to 200,1.07 nohead lt 3 lw 10
set arrow from 201,1.09 to 223,1.09 nohead lt 1 lw 40
set arrow from 224,1.11 to 227,1.11 nohead lt 4 lw 10
set arrow from 228,1.09 to 250,1.09 nohead lt 1 lw 40
set arrow from 251,1.07 to 260,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93409.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:260]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93409.1.eps"
plot "./TMHMM_278092/USQ93409.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
