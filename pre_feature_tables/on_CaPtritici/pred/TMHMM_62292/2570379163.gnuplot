set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 62,1.11 nohead lt 4 lw 10
set arrow from 63,1.09 to 85,1.09 nohead lt 1 lw 40
set arrow from 86,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 120,1.09 nohead lt 1 lw 40
set arrow from 121,1.11 to 123,1.11 nohead lt 4 lw 10
set arrow from 124,1.09 to 146,1.09 nohead lt 1 lw 40
set arrow from 147,1.07 to 152,1.07 nohead lt 3 lw 10
set arrow from 153,1.09 to 172,1.09 nohead lt 1 lw 40
set arrow from 173,1.11 to 191,1.11 nohead lt 4 lw 10
set arrow from 192,1.09 to 214,1.09 nohead lt 1 lw 40
set arrow from 215,1.07 to 286,1.07 nohead lt 3 lw 10
set arrow from 287,1.09 to 309,1.09 nohead lt 1 lw 40
set arrow from 310,1.11 to 323,1.11 nohead lt 4 lw 10
set arrow from 324,1.09 to 346,1.09 nohead lt 1 lw 40
set arrow from 347,1.07 to 347,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379163"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:347]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379163.eps"
plot "./TMHMM_62292/2570379163.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
