set arrow from 1,1.07 to 50,1.07 nohead lt 3 lw 10
set arrow from 51,1.09 to 73,1.09 nohead lt 1 lw 40
set arrow from 74,1.11 to 77,1.11 nohead lt 4 lw 10
set arrow from 78,1.09 to 95,1.09 nohead lt 1 lw 40
set arrow from 96,1.07 to 218,1.07 nohead lt 3 lw 10
set arrow from 219,1.09 to 241,1.09 nohead lt 1 lw 40
set arrow from 242,1.11 to 260,1.11 nohead lt 4 lw 10
set arrow from 261,1.09 to 283,1.09 nohead lt 1 lw 40
set arrow from 284,1.07 to 609,1.07 nohead lt 3 lw 10
set arrow from 610,1.09 to 632,1.09 nohead lt 1 lw 40
set arrow from 633,1.11 to 651,1.11 nohead lt 4 lw 10
set arrow from 652,1.09 to 671,1.09 nohead lt 1 lw 40
set arrow from 672,1.07 to 691,1.07 nohead lt 3 lw 10
set arrow from 692,1.09 to 711,1.09 nohead lt 1 lw 40
set arrow from 712,1.11 to 715,1.11 nohead lt 4 lw 10
set arrow from 716,1.09 to 738,1.09 nohead lt 1 lw 40
set arrow from 739,1.07 to 744,1.07 nohead lt 3 lw 10
set arrow from 745,1.09 to 767,1.09 nohead lt 1 lw 40
set arrow from 768,1.11 to 768,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93488.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:768]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93488.1.eps"
plot "./TMHMM_278092/USQ93488.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
