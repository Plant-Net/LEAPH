set arrow from 1,1.07 to 25,1.07 nohead lt 3 lw 10
set arrow from 26,1.09 to 48,1.09 nohead lt 1 lw 40
set arrow from 49,1.11 to 422,1.11 nohead lt 4 lw 10
set arrow from 423,1.09 to 445,1.09 nohead lt 1 lw 40
set arrow from 446,1.07 to 464,1.07 nohead lt 3 lw 10
set arrow from 465,1.09 to 487,1.09 nohead lt 1 lw 40
set arrow from 488,1.11 to 501,1.11 nohead lt 4 lw 10
set arrow from 502,1.09 to 524,1.09 nohead lt 1 lw 40
set arrow from 525,1.07 to 544,1.07 nohead lt 3 lw 10
set arrow from 545,1.09 to 567,1.09 nohead lt 1 lw 40
set arrow from 568,1.11 to 597,1.11 nohead lt 4 lw 10
set arrow from 598,1.09 to 620,1.09 nohead lt 1 lw 40
set arrow from 621,1.07 to 632,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378991"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:632]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378991.eps"
plot "./TMHMM_62292/2570378991.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
