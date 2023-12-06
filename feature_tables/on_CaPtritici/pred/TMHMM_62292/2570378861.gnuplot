set arrow from 1,1.07 to 44,1.07 nohead lt 3 lw 10
set arrow from 45,1.09 to 67,1.09 nohead lt 1 lw 40
set arrow from 68,1.11 to 81,1.11 nohead lt 4 lw 10
set arrow from 82,1.09 to 99,1.09 nohead lt 1 lw 40
set arrow from 100,1.07 to 111,1.07 nohead lt 3 lw 10
set arrow from 112,1.09 to 131,1.09 nohead lt 1 lw 40
set arrow from 132,1.11 to 165,1.11 nohead lt 4 lw 10
set arrow from 166,1.09 to 188,1.09 nohead lt 1 lw 40
set arrow from 189,1.07 to 200,1.07 nohead lt 3 lw 10
set arrow from 201,1.09 to 223,1.09 nohead lt 1 lw 40
set arrow from 224,1.11 to 277,1.11 nohead lt 4 lw 10
set arrow from 278,1.09 to 300,1.09 nohead lt 1 lw 40
set arrow from 301,1.07 to 335,1.07 nohead lt 3 lw 10
set arrow from 336,1.09 to 358,1.09 nohead lt 1 lw 40
set arrow from 359,1.11 to 372,1.11 nohead lt 4 lw 10
set arrow from 373,1.09 to 392,1.09 nohead lt 1 lw 40
set arrow from 393,1.07 to 432,1.07 nohead lt 3 lw 10
set arrow from 433,1.09 to 455,1.09 nohead lt 1 lw 40
set arrow from 456,1.11 to 497,1.11 nohead lt 4 lw 10
set arrow from 498,1.09 to 520,1.09 nohead lt 1 lw 40
set arrow from 521,1.07 to 521,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378861"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:521]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378861.eps"
plot "./TMHMM_62292/2570378861.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
