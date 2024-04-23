set arrow from 1,1.07 to 8,1.07 nohead lt 3 lw 10
set arrow from 9,1.09 to 31,1.09 nohead lt 1 lw 40
set arrow from 32,1.11 to 103,1.11 nohead lt 4 lw 10
set arrow from 104,1.09 to 126,1.09 nohead lt 1 lw 40
set arrow from 127,1.07 to 132,1.07 nohead lt 3 lw 10
set arrow from 133,1.09 to 155,1.09 nohead lt 1 lw 40
set arrow from 156,1.11 to 169,1.11 nohead lt 4 lw 10
set arrow from 170,1.09 to 192,1.09 nohead lt 1 lw 40
set arrow from 193,1.07 to 229,1.07 nohead lt 3 lw 10
set arrow from 230,1.09 to 252,1.09 nohead lt 1 lw 40
set arrow from 253,1.11 to 279,1.11 nohead lt 4 lw 10
set arrow from 280,1.09 to 302,1.09 nohead lt 1 lw 40
set arrow from 303,1.07 to 310,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAW8|B1VAW8_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:310]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAW8_B1VAW8_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAW8_B1VAW8_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
