set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 62,1.11 nohead lt 4 lw 10
set arrow from 63,1.09 to 85,1.09 nohead lt 1 lw 40
set arrow from 86,1.07 to 151,1.07 nohead lt 3 lw 10
set arrow from 152,1.09 to 174,1.09 nohead lt 1 lw 40
set arrow from 175,1.11 to 250,1.11 nohead lt 4 lw 10
set arrow from 251,1.09 to 273,1.09 nohead lt 1 lw 40
set arrow from 274,1.07 to 277,1.07 nohead lt 3 lw 10
set arrow from 278,1.09 to 300,1.09 nohead lt 1 lw 40
set arrow from 301,1.11 to 590,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V918|B1V918_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:590]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V918_B1V918_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V918_B1V918_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
