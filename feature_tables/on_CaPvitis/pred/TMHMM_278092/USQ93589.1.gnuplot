set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 42,1.09 nohead lt 1 lw 40
set arrow from 43,1.11 to 56,1.11 nohead lt 4 lw 10
set arrow from 57,1.09 to 79,1.09 nohead lt 1 lw 40
set arrow from 80,1.07 to 85,1.07 nohead lt 3 lw 10
set arrow from 86,1.09 to 108,1.09 nohead lt 1 lw 40
set arrow from 109,1.11 to 161,1.11 nohead lt 4 lw 10
set arrow from 162,1.09 to 184,1.09 nohead lt 1 lw 40
set arrow from 185,1.07 to 204,1.07 nohead lt 3 lw 10
set arrow from 205,1.09 to 227,1.09 nohead lt 1 lw 40
set arrow from 228,1.11 to 241,1.11 nohead lt 4 lw 10
set arrow from 242,1.09 to 261,1.09 nohead lt 1 lw 40
set arrow from 262,1.07 to 305,1.07 nohead lt 3 lw 10
set arrow from 306,1.09 to 328,1.09 nohead lt 1 lw 40
set arrow from 329,1.11 to 342,1.11 nohead lt 4 lw 10
set arrow from 343,1.09 to 365,1.09 nohead lt 1 lw 40
set arrow from 366,1.07 to 404,1.07 nohead lt 3 lw 10
set arrow from 405,1.09 to 427,1.09 nohead lt 1 lw 40
set arrow from 428,1.11 to 470,1.11 nohead lt 4 lw 10
set arrow from 471,1.09 to 493,1.09 nohead lt 1 lw 40
set arrow from 494,1.07 to 495,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93589.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:495]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93589.1.eps"
plot "./TMHMM_278092/USQ93589.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
