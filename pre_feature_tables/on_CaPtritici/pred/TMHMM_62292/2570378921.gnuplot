set arrow from 1,1.07 to 64,1.07 nohead lt 3 lw 10
set arrow from 65,1.09 to 87,1.09 nohead lt 1 lw 40
set arrow from 88,1.11 to 96,1.11 nohead lt 4 lw 10
set arrow from 97,1.09 to 119,1.09 nohead lt 1 lw 40
set arrow from 120,1.07 to 213,1.07 nohead lt 3 lw 10
set arrow from 214,1.09 to 233,1.09 nohead lt 1 lw 40
set arrow from 234,1.11 to 257,1.11 nohead lt 4 lw 10
set arrow from 258,1.09 to 280,1.09 nohead lt 1 lw 40
set arrow from 281,1.07 to 292,1.07 nohead lt 3 lw 10
set arrow from 293,1.09 to 315,1.09 nohead lt 1 lw 40
set arrow from 316,1.11 to 707,1.11 nohead lt 4 lw 10
set arrow from 708,1.09 to 730,1.09 nohead lt 1 lw 40
set arrow from 731,1.07 to 750,1.07 nohead lt 3 lw 10
set arrow from 751,1.09 to 770,1.09 nohead lt 1 lw 40
set arrow from 771,1.11 to 784,1.11 nohead lt 4 lw 10
set arrow from 785,1.09 to 804,1.09 nohead lt 1 lw 40
set arrow from 805,1.07 to 820,1.07 nohead lt 3 lw 10
set arrow from 821,1.09 to 843,1.09 nohead lt 1 lw 40
set arrow from 844,1.11 to 857,1.11 nohead lt 4 lw 10
set arrow from 858,1.09 to 877,1.09 nohead lt 1 lw 40
set arrow from 878,1.07 to 889,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378921"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:889]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378921.eps"
plot "./TMHMM_62292/2570378921.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
