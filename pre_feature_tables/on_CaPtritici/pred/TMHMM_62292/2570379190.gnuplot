set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.11 to 51,1.11 nohead lt 4 lw 10
set arrow from 52,1.09 to 74,1.09 nohead lt 1 lw 40
set arrow from 75,1.07 to 86,1.07 nohead lt 3 lw 10
set arrow from 87,1.09 to 107,1.09 nohead lt 1 lw 40
set arrow from 108,1.11 to 121,1.11 nohead lt 4 lw 10
set arrow from 122,1.09 to 144,1.09 nohead lt 1 lw 40
set arrow from 145,1.07 to 150,1.07 nohead lt 3 lw 10
set arrow from 151,1.09 to 170,1.09 nohead lt 1 lw 40
set arrow from 171,1.11 to 173,1.11 nohead lt 4 lw 10
set arrow from 174,1.09 to 193,1.09 nohead lt 1 lw 40
set arrow from 194,1.07 to 199,1.07 nohead lt 3 lw 10
set arrow from 200,1.09 to 219,1.09 nohead lt 1 lw 40
set arrow from 220,1.11 to 229,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for 2570379190"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:229]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570379190.eps"
plot "./TMHMM_62292/2570379190.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
