set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 32,1.11 nohead lt 4 lw 10
set arrow from 33,1.09 to 55,1.09 nohead lt 1 lw 40
set arrow from 56,1.07 to 59,1.07 nohead lt 3 lw 10
set arrow from 60,1.09 to 82,1.09 nohead lt 1 lw 40
set arrow from 83,1.11 to 91,1.11 nohead lt 4 lw 10
set arrow from 92,1.09 to 114,1.09 nohead lt 1 lw 40
set arrow from 115,1.07 to 145,1.07 nohead lt 3 lw 10
set arrow from 146,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.11 to 182,1.11 nohead lt 4 lw 10
set arrow from 183,1.09 to 205,1.09 nohead lt 1 lw 40
set arrow from 206,1.07 to 225,1.07 nohead lt 3 lw 10
set arrow from 226,1.09 to 248,1.09 nohead lt 1 lw 40
set arrow from 249,1.11 to 262,1.11 nohead lt 4 lw 10
set arrow from 263,1.09 to 285,1.09 nohead lt 1 lw 40
set arrow from 286,1.07 to 297,1.07 nohead lt 3 lw 10
set arrow from 298,1.09 to 320,1.09 nohead lt 1 lw 40
set arrow from 321,1.11 to 1062,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for lcl|CP097583.1_cds_USQ93405.1_1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:1062]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_263138/lcl_CP097583.1_cds_USQ93405.1_1.eps"
plot "./TMHMM_263138/lcl_CP097583.1_cds_USQ93405.1_1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
