set arrow from 1,1.11 to 28,1.11 nohead lt 4 lw 10
set arrow from 29,1.09 to 51,1.09 nohead lt 1 lw 40
set arrow from 52,1.07 to 77,1.07 nohead lt 3 lw 10
set arrow from 78,1.09 to 100,1.09 nohead lt 1 lw 40
set arrow from 101,1.11 to 114,1.11 nohead lt 4 lw 10
set arrow from 115,1.09 to 137,1.09 nohead lt 1 lw 40
set arrow from 138,1.07 to 156,1.07 nohead lt 3 lw 10
set arrow from 157,1.09 to 179,1.09 nohead lt 1 lw 40
set arrow from 180,1.11 to 198,1.11 nohead lt 4 lw 10
set arrow from 199,1.09 to 221,1.09 nohead lt 1 lw 40
set arrow from 222,1.07 to 233,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379063"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:233]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379063.eps"
plot "./TMHMM_62292/2570379063.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
