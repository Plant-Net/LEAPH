set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.11 to 62,1.11 nohead lt 4 lw 10
set arrow from 63,1.09 to 82,1.09 nohead lt 1 lw 40
set arrow from 83,1.07 to 94,1.07 nohead lt 3 lw 10
set arrow from 95,1.09 to 114,1.09 nohead lt 1 lw 40
set arrow from 115,1.11 to 145,1.11 nohead lt 4 lw 10
set arrow from 146,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.07 to 174,1.07 nohead lt 3 lw 10
set arrow from 175,1.09 to 197,1.09 nohead lt 1 lw 40
set arrow from 198,1.11 to 200,1.11 nohead lt 4 lw 10
set arrow from 201,1.09 to 218,1.09 nohead lt 1 lw 40
set arrow from 219,1.07 to 224,1.07 nohead lt 3 lw 10
set arrow from 225,1.09 to 247,1.09 nohead lt 1 lw 40
set arrow from 248,1.11 to 256,1.11 nohead lt 4 lw 10
set arrow from 257,1.09 to 279,1.09 nohead lt 1 lw 40
set arrow from 280,1.07 to 354,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for 2570378692"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:354]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_62292/2570378692.eps"
plot "./TMHMM_62292/2570378692.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
