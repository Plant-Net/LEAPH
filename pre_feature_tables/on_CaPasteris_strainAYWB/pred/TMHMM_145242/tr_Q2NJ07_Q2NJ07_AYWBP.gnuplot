set arrow from 1,1.07 to 49,1.07 nohead lt 3 lw 10
set arrow from 50,1.09 to 72,1.09 nohead lt 1 lw 40
set arrow from 73,1.11 to 76,1.11 nohead lt 4 lw 10
set arrow from 77,1.09 to 94,1.09 nohead lt 1 lw 40
set arrow from 95,1.07 to 221,1.07 nohead lt 3 lw 10
set arrow from 222,1.09 to 244,1.09 nohead lt 1 lw 40
set arrow from 245,1.11 to 263,1.11 nohead lt 4 lw 10
set arrow from 264,1.09 to 286,1.09 nohead lt 1 lw 40
set arrow from 287,1.07 to 617,1.07 nohead lt 3 lw 10
set arrow from 618,1.09 to 640,1.09 nohead lt 1 lw 40
set arrow from 641,1.11 to 654,1.11 nohead lt 4 lw 10
set arrow from 655,1.09 to 672,1.09 nohead lt 1 lw 40
set arrow from 673,1.07 to 690,1.07 nohead lt 3 lw 10
set arrow from 691,1.09 to 713,1.09 nohead lt 1 lw 40
set arrow from 714,1.11 to 722,1.11 nohead lt 4 lw 10
set arrow from 723,1.09 to 745,1.09 nohead lt 1 lw 40
set arrow from 746,1.07 to 753,1.07 nohead lt 3 lw 10
set arrow from 754,1.09 to 771,1.09 nohead lt 1 lw 40
set arrow from 772,1.11 to 785,1.11 nohead lt 4 lw 10
set arrow from 786,1.09 to 803,1.09 nohead lt 1 lw 40
set arrow from 804,1.07 to 817,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJ07|Q2NJ07_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:817]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJ07_Q2NJ07_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJ07_Q2NJ07_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
