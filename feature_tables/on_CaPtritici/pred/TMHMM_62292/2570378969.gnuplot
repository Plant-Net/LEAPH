set arrow from 1,1.11 to 64,1.11 nohead lt 4 lw 10
set arrow from 65,1.09 to 87,1.09 nohead lt 1 lw 40
set arrow from 88,1.07 to 107,1.07 nohead lt 3 lw 10
set arrow from 108,1.09 to 130,1.09 nohead lt 1 lw 40
set arrow from 131,1.11 to 139,1.11 nohead lt 4 lw 10
set arrow from 140,1.09 to 162,1.09 nohead lt 1 lw 40
set arrow from 163,1.07 to 208,1.07 nohead lt 3 lw 10
set arrow from 209,1.09 to 231,1.09 nohead lt 1 lw 40
set arrow from 232,1.11 to 240,1.11 nohead lt 4 lw 10
set arrow from 241,1.09 to 263,1.09 nohead lt 1 lw 40
set arrow from 264,1.07 to 275,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378969"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:275]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378969.eps"
plot "./TMHMM_62292/2570378969.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
