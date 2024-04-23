set arrow from 1,1.07 to 25,1.07 nohead lt 3 lw 10
set arrow from 26,1.09 to 48,1.09 nohead lt 1 lw 40
set arrow from 49,1.11 to 88,1.11 nohead lt 4 lw 10
set arrow from 89,1.09 to 111,1.09 nohead lt 1 lw 40
set arrow from 112,1.07 to 122,1.07 nohead lt 3 lw 10
set arrow from 123,1.09 to 145,1.09 nohead lt 1 lw 40
set arrow from 146,1.11 to 149,1.11 nohead lt 4 lw 10
set arrow from 150,1.09 to 169,1.09 nohead lt 1 lw 40
set arrow from 170,1.07 to 207,1.07 nohead lt 3 lw 10
set arrow from 208,1.09 to 230,1.09 nohead lt 1 lw 40
set arrow from 231,1.11 to 257,1.11 nohead lt 4 lw 10
set arrow from 258,1.09 to 280,1.09 nohead lt 1 lw 40
set arrow from 281,1.07 to 289,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379155"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:289]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379155.eps"
plot "./TMHMM_62292/2570379155.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
