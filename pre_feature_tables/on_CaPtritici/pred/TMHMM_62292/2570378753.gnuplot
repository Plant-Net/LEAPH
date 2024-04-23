set arrow from 1,1.07 to 16,1.07 nohead lt 3 lw 10
set arrow from 17,1.09 to 39,1.09 nohead lt 1 lw 40
set arrow from 40,1.11 to 65,1.11 nohead lt 4 lw 10
set arrow from 66,1.09 to 88,1.09 nohead lt 1 lw 40
set arrow from 89,1.07 to 136,1.07 nohead lt 3 lw 10
set arrow from 137,1.09 to 159,1.09 nohead lt 1 lw 40
set arrow from 160,1.11 to 163,1.11 nohead lt 4 lw 10
set arrow from 164,1.09 to 186,1.09 nohead lt 1 lw 40
set arrow from 187,1.07 to 247,1.07 nohead lt 3 lw 10
set arrow from 248,1.09 to 270,1.09 nohead lt 1 lw 40
set arrow from 271,1.11 to 284,1.11 nohead lt 4 lw 10
set arrow from 285,1.09 to 304,1.09 nohead lt 1 lw 40
set arrow from 305,1.07 to 598,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378753"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:598]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378753.eps"
plot "./TMHMM_62292/2570378753.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
