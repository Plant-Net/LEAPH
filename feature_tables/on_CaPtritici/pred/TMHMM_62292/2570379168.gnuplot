set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.11 to 43,1.11 nohead lt 4 lw 10
set arrow from 44,1.09 to 66,1.09 nohead lt 1 lw 40
set arrow from 67,1.07 to 72,1.07 nohead lt 3 lw 10
set arrow from 73,1.09 to 95,1.09 nohead lt 1 lw 40
set arrow from 96,1.11 to 109,1.11 nohead lt 4 lw 10
set arrow from 110,1.09 to 132,1.09 nohead lt 1 lw 40
set arrow from 133,1.07 to 144,1.07 nohead lt 3 lw 10
set arrow from 145,1.09 to 167,1.09 nohead lt 1 lw 40
set arrow from 168,1.11 to 188,1.11 nohead lt 4 lw 10
set arrow from 189,1.09 to 211,1.09 nohead lt 1 lw 40
set arrow from 212,1.07 to 226,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379168"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:226]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379168.eps"
plot "./TMHMM_62292/2570379168.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
