set arrow from 1,1.07 to 34,1.07 nohead lt 3 lw 10
set arrow from 35,1.09 to 57,1.09 nohead lt 1 lw 40
set arrow from 58,1.11 to 66,1.11 nohead lt 4 lw 10
set arrow from 67,1.09 to 89,1.09 nohead lt 1 lw 40
set arrow from 90,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 120,1.09 nohead lt 1 lw 40
set arrow from 121,1.11 to 124,1.11 nohead lt 4 lw 10
set arrow from 125,1.09 to 147,1.09 nohead lt 1 lw 40
set arrow from 148,1.07 to 159,1.07 nohead lt 3 lw 10
set arrow from 160,1.09 to 178,1.09 nohead lt 1 lw 40
set arrow from 179,1.11 to 192,1.11 nohead lt 4 lw 10
set arrow from 193,1.09 to 215,1.09 nohead lt 1 lw 40
set arrow from 216,1.07 to 235,1.07 nohead lt 3 lw 10
set arrow from 236,1.09 to 258,1.09 nohead lt 1 lw 40
set arrow from 259,1.11 to 262,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379073"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:262]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379073.eps"
plot "./TMHMM_62292/2570379073.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
