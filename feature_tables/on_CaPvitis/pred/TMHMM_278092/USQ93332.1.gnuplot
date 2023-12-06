set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 43,1.11 nohead lt 4 lw 10
set arrow from 44,1.09 to 63,1.09 nohead lt 1 lw 40
set arrow from 64,1.07 to 74,1.07 nohead lt 3 lw 10
set arrow from 75,1.09 to 97,1.09 nohead lt 1 lw 40
set arrow from 98,1.11 to 106,1.11 nohead lt 4 lw 10
set arrow from 107,1.09 to 129,1.09 nohead lt 1 lw 40
set arrow from 130,1.07 to 135,1.07 nohead lt 3 lw 10
set arrow from 136,1.09 to 155,1.09 nohead lt 1 lw 40
set arrow from 156,1.11 to 164,1.11 nohead lt 4 lw 10
set arrow from 165,1.09 to 184,1.09 nohead lt 1 lw 40
set arrow from 185,1.07 to 205,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for USQ93332.1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:205]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_278092/USQ93332.1.eps"
plot "./TMHMM_278092/USQ93332.1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
