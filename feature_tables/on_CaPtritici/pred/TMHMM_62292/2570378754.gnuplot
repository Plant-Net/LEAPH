set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 49,1.11 nohead lt 4 lw 10
set arrow from 50,1.09 to 72,1.09 nohead lt 1 lw 40
set arrow from 73,1.07 to 126,1.07 nohead lt 3 lw 10
set arrow from 127,1.09 to 149,1.09 nohead lt 1 lw 40
set arrow from 150,1.11 to 152,1.11 nohead lt 4 lw 10
set arrow from 153,1.09 to 172,1.09 nohead lt 1 lw 40
set arrow from 173,1.07 to 238,1.07 nohead lt 3 lw 10
set arrow from 239,1.09 to 261,1.09 nohead lt 1 lw 40
set arrow from 262,1.11 to 280,1.11 nohead lt 4 lw 10
set arrow from 281,1.09 to 303,1.09 nohead lt 1 lw 40
set arrow from 304,1.07 to 574,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378754"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:574]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378754.eps"
plot "./TMHMM_62292/2570378754.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
