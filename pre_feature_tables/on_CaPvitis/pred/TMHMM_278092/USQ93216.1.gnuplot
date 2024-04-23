set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 39,1.09 nohead lt 1 lw 40
set arrow from 40,1.11 to 63,1.11 nohead lt 4 lw 10
set arrow from 64,1.09 to 86,1.09 nohead lt 1 lw 40
set arrow from 87,1.07 to 106,1.07 nohead lt 3 lw 10
set arrow from 107,1.09 to 129,1.09 nohead lt 1 lw 40
set arrow from 130,1.11 to 138,1.11 nohead lt 4 lw 10
set arrow from 139,1.09 to 158,1.09 nohead lt 1 lw 40
set arrow from 159,1.07 to 164,1.07 nohead lt 3 lw 10
set arrow from 165,1.09 to 179,1.09 nohead lt 1 lw 40
set arrow from 180,1.11 to 198,1.11 nohead lt 4 lw 10
set arrow from 199,1.09 to 221,1.09 nohead lt 1 lw 40
set arrow from 222,1.07 to 246,1.07 nohead lt 3 lw 10
set arrow from 247,1.09 to 269,1.09 nohead lt 1 lw 40
set arrow from 270,1.11 to 288,1.11 nohead lt 4 lw 10
set arrow from 289,1.09 to 311,1.09 nohead lt 1 lw 40
set arrow from 312,1.07 to 347,1.07 nohead lt 3 lw 10
set arrow from 348,1.09 to 370,1.09 nohead lt 1 lw 40
set arrow from 371,1.11 to 373,1.11 nohead lt 4 lw 10
set arrow from 374,1.09 to 396,1.09 nohead lt 1 lw 40
set arrow from 397,1.07 to 413,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93216.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:413]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93216.1.eps"
plot "./TMHMM_278092/USQ93216.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
