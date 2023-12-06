set arrow from 1,1.07 to 1,1.07 nohead lt 3 lw 10
set arrow from 2,1.09 to 24,1.09 nohead lt 1 lw 40
set arrow from 25,1.11 to 52,1.11 nohead lt 4 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.07 to 95,1.07 nohead lt 3 lw 10
set arrow from 96,1.09 to 113,1.09 nohead lt 1 lw 40
set arrow from 114,1.11 to 122,1.11 nohead lt 4 lw 10
set arrow from 123,1.09 to 145,1.09 nohead lt 1 lw 40
set arrow from 146,1.07 to 149,1.07 nohead lt 3 lw 10
set arrow from 150,1.09 to 172,1.09 nohead lt 1 lw 40
set arrow from 173,1.11 to 181,1.11 nohead lt 4 lw 10
set arrow from 182,1.09 to 201,1.09 nohead lt 1 lw 40
set arrow from 202,1.07 to 225,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for sp|B1V9H9|PLSY_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:225]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/sp_B1V9H9_PLSY_PHYAS.eps"
plot "./TMHMM_187945/sp_B1V9H9_PLSY_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
