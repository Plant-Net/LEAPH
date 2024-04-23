set arrow from 1,1.07 to 22,1.07 nohead lt 3 lw 10
set arrow from 23,1.09 to 45,1.09 nohead lt 1 lw 40
set arrow from 46,1.11 to 59,1.11 nohead lt 4 lw 10
set arrow from 60,1.09 to 82,1.09 nohead lt 1 lw 40
set arrow from 83,1.07 to 101,1.07 nohead lt 3 lw 10
set arrow from 102,1.09 to 119,1.09 nohead lt 1 lw 40
set arrow from 120,1.11 to 128,1.11 nohead lt 4 lw 10
set arrow from 129,1.09 to 148,1.09 nohead lt 1 lw 40
set arrow from 149,1.07 to 172,1.07 nohead lt 3 lw 10
set arrow from 173,1.09 to 192,1.09 nohead lt 1 lw 40
set arrow from 193,1.11 to 205,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1V980|B1V980_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:205]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1V980_B1V980_PHYAS.eps"
plot "./TMHMM_187945/tr_B1V980_B1V980_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
