set arrow from 1,1.07 to 302,1.07 nohead lt 3 lw 10
set arrow from 303,1.09 to 325,1.09 nohead lt 1 lw 40
set arrow from 326,1.11 to 334,1.11 nohead lt 4 lw 10
set arrow from 335,1.09 to 357,1.09 nohead lt 1 lw 40
set arrow from 358,1.07 to 392,1.07 nohead lt 3 lw 10
set arrow from 393,1.09 to 415,1.09 nohead lt 1 lw 40
set arrow from 416,1.11 to 434,1.11 nohead lt 4 lw 10
set arrow from 435,1.09 to 457,1.09 nohead lt 1 lw 40
set arrow from 458,1.07 to 480,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93345.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:480]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93345.1.eps"
plot "./TMHMM_278092/USQ93345.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
