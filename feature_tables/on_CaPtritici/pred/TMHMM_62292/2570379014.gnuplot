set arrow from 1,1.07 to 31,1.07 nohead lt 3 lw 10
set arrow from 32,1.09 to 51,1.09 nohead lt 1 lw 40
set arrow from 52,1.11 to 60,1.11 nohead lt 4 lw 10
set arrow from 61,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.07 to 86,1.07 nohead lt 3 lw 10
set arrow from 87,1.09 to 109,1.09 nohead lt 1 lw 40
set arrow from 110,1.11 to 128,1.11 nohead lt 4 lw 10
set arrow from 129,1.09 to 148,1.09 nohead lt 1 lw 40
set arrow from 149,1.07 to 160,1.07 nohead lt 3 lw 10
set arrow from 161,1.09 to 183,1.09 nohead lt 1 lw 40
set arrow from 184,1.11 to 208,1.11 nohead lt 4 lw 10
set arrow from 209,1.09 to 231,1.09 nohead lt 1 lw 40
set arrow from 232,1.07 to 247,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379014"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:247]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379014.eps"
plot "./TMHMM_62292/2570379014.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
