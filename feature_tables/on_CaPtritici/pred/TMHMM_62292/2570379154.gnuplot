set arrow from 1,1.07 to 8,1.07 nohead lt 3 lw 10
set arrow from 9,1.09 to 31,1.09 nohead lt 1 lw 40
set arrow from 32,1.11 to 99,1.11 nohead lt 4 lw 10
set arrow from 100,1.09 to 122,1.09 nohead lt 1 lw 40
set arrow from 123,1.07 to 130,1.07 nohead lt 3 lw 10
set arrow from 131,1.09 to 153,1.09 nohead lt 1 lw 40
set arrow from 154,1.11 to 167,1.11 nohead lt 4 lw 10
set arrow from 168,1.09 to 190,1.09 nohead lt 1 lw 40
set arrow from 191,1.07 to 226,1.07 nohead lt 3 lw 10
set arrow from 227,1.09 to 249,1.09 nohead lt 1 lw 40
set arrow from 250,1.11 to 278,1.11 nohead lt 4 lw 10
set arrow from 279,1.09 to 301,1.09 nohead lt 1 lw 40
set arrow from 302,1.07 to 311,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379154"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:311]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379154.eps"
plot "./TMHMM_62292/2570379154.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
