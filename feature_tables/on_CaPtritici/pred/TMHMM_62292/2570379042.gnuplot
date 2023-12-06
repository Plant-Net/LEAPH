set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.11 to 53,1.11 nohead lt 4 lw 10
set arrow from 54,1.09 to 71,1.09 nohead lt 1 lw 40
set arrow from 72,1.07 to 91,1.07 nohead lt 3 lw 10
set arrow from 92,1.09 to 114,1.09 nohead lt 1 lw 40
set arrow from 115,1.11 to 141,1.11 nohead lt 4 lw 10
set arrow from 142,1.09 to 161,1.09 nohead lt 1 lw 40
set arrow from 162,1.07 to 173,1.07 nohead lt 3 lw 10
set arrow from 174,1.09 to 196,1.09 nohead lt 1 lw 40
set arrow from 197,1.11 to 205,1.11 nohead lt 4 lw 10
set arrow from 206,1.09 to 228,1.09 nohead lt 1 lw 40
set arrow from 229,1.07 to 258,1.07 nohead lt 3 lw 10
set arrow from 259,1.09 to 281,1.09 nohead lt 1 lw 40
set arrow from 282,1.11 to 300,1.11 nohead lt 4 lw 10
set arrow from 301,1.09 to 323,1.09 nohead lt 1 lw 40
set arrow from 324,1.07 to 343,1.07 nohead lt 3 lw 10
set arrow from 344,1.09 to 366,1.09 nohead lt 1 lw 40
set arrow from 367,1.11 to 408,1.11 nohead lt 4 lw 10
set arrow from 409,1.09 to 431,1.09 nohead lt 1 lw 40
set arrow from 432,1.07 to 442,1.07 nohead lt 3 lw 10
set arrow from 443,1.09 to 465,1.09 nohead lt 1 lw 40
set arrow from 466,1.11 to 479,1.11 nohead lt 4 lw 10
set arrow from 480,1.09 to 502,1.09 nohead lt 1 lw 40
set arrow from 503,1.07 to 508,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379042"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:508]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379042.eps"
plot "./TMHMM_62292/2570379042.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
