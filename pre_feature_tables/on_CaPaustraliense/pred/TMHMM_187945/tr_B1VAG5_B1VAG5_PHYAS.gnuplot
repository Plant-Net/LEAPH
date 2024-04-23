set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 25,1.09 nohead lt 1 lw 40
set arrow from 26,1.11 to 34,1.11 nohead lt 4 lw 10
set arrow from 35,1.09 to 54,1.09 nohead lt 1 lw 40
set arrow from 55,1.07 to 60,1.07 nohead lt 3 lw 10
set arrow from 61,1.09 to 78,1.09 nohead lt 1 lw 40
set arrow from 79,1.11 to 90,1.11 nohead lt 4 lw 10
set arrow from 91,1.09 to 113,1.09 nohead lt 1 lw 40
set arrow from 114,1.07 to 124,1.07 nohead lt 3 lw 10
set arrow from 125,1.09 to 142,1.09 nohead lt 1 lw 40
set arrow from 143,1.11 to 154,1.11 nohead lt 4 lw 10
set arrow from 155,1.09 to 177,1.09 nohead lt 1 lw 40
set arrow from 178,1.07 to 192,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAG5|B1VAG5_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:192]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAG5_B1VAG5_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAG5_B1VAG5_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
