set arrow from 1,1.11 to 3,1.11 nohead lt 4 lw 10
set arrow from 4,1.09 to 21,1.09 nohead lt 1 lw 40
set arrow from 22,1.07 to 86,1.07 nohead lt 3 lw 10
set arrow from 87,1.09 to 109,1.09 nohead lt 1 lw 40
set arrow from 110,1.11 to 123,1.11 nohead lt 4 lw 10
set arrow from 124,1.09 to 146,1.09 nohead lt 1 lw 40
set arrow from 147,1.07 to 157,1.07 nohead lt 3 lw 10
set arrow from 158,1.09 to 177,1.09 nohead lt 1 lw 40
set arrow from 178,1.11 to 196,1.11 nohead lt 4 lw 10
set arrow from 197,1.09 to 219,1.09 nohead lt 1 lw 40
set arrow from 220,1.07 to 231,1.07 nohead lt 3 lw 10
set arrow from 232,1.09 to 254,1.09 nohead lt 1 lw 40
set arrow from 255,1.11 to 258,1.11 nohead lt 4 lw 10
set arrow from 259,1.09 to 281,1.09 nohead lt 1 lw 40
set arrow from 282,1.07 to 300,1.07 nohead lt 3 lw 10
set arrow from 301,1.09 to 323,1.09 nohead lt 1 lw 40
set arrow from 324,1.11 to 339,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93397.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:339]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93397.1.eps"
plot "./TMHMM_278092/USQ93397.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
