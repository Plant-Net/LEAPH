set arrow from 1,1.07 to 28,1.07 nohead lt 3 lw 10
set arrow from 29,1.09 to 51,1.09 nohead lt 1 lw 40
set arrow from 52,1.11 to 399,1.11 nohead lt 4 lw 10
set arrow from 400,1.09 to 422,1.09 nohead lt 1 lw 40
set arrow from 423,1.07 to 442,1.07 nohead lt 3 lw 10
set arrow from 443,1.09 to 465,1.09 nohead lt 1 lw 40
set arrow from 466,1.11 to 479,1.11 nohead lt 4 lw 10
set arrow from 480,1.09 to 502,1.09 nohead lt 1 lw 40
set arrow from 503,1.07 to 522,1.07 nohead lt 3 lw 10
set arrow from 523,1.09 to 545,1.09 nohead lt 1 lw 40
set arrow from 546,1.11 to 575,1.11 nohead lt 4 lw 10
set arrow from 576,1.09 to 598,1.09 nohead lt 1 lw 40
set arrow from 599,1.07 to 608,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378990"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:608]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378990.eps"
plot "./TMHMM_62292/2570378990.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
