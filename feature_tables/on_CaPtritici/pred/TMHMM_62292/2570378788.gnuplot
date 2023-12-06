set arrow from 1,1.07 to 29,1.07 nohead lt 3 lw 10
set arrow from 30,1.09 to 52,1.09 nohead lt 1 lw 40
set arrow from 53,1.11 to 89,1.11 nohead lt 4 lw 10
set arrow from 90,1.09 to 112,1.09 nohead lt 1 lw 40
set arrow from 113,1.07 to 118,1.07 nohead lt 3 lw 10
set arrow from 119,1.09 to 137,1.09 nohead lt 1 lw 40
set arrow from 138,1.11 to 156,1.11 nohead lt 4 lw 10
set arrow from 157,1.09 to 179,1.09 nohead lt 1 lw 40
set arrow from 180,1.07 to 216,1.07 nohead lt 3 lw 10
set arrow from 217,1.09 to 239,1.09 nohead lt 1 lw 40
set arrow from 240,1.11 to 258,1.11 nohead lt 4 lw 10
set arrow from 259,1.09 to 281,1.09 nohead lt 1 lw 40
set arrow from 282,1.07 to 296,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378788"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:296]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378788.eps"
plot "./TMHMM_62292/2570378788.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
