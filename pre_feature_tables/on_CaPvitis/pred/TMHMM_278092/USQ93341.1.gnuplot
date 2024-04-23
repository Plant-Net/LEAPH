set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.07 to 57,1.07 nohead lt 3 lw 10
set arrow from 58,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.11 to 138,1.11 nohead lt 4 lw 10
set arrow from 139,1.09 to 161,1.09 nohead lt 1 lw 40
set arrow from 162,1.07 to 162,1.07 nohead lt 3 lw 10
set arrow from 163,1.09 to 181,1.09 nohead lt 1 lw 40
set arrow from 182,1.11 to 248,1.11 nohead lt 4 lw 10
set arrow from 249,1.09 to 271,1.09 nohead lt 1 lw 40
set arrow from 272,1.07 to 277,1.07 nohead lt 3 lw 10
set arrow from 278,1.09 to 300,1.09 nohead lt 1 lw 40
set arrow from 301,1.11 to 590,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93341.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:590]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93341.1.eps"
plot "./TMHMM_278092/USQ93341.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
