set arrow from 1,1.07 to 1,1.07 nohead lt 3 lw 10
set arrow from 2,1.09 to 24,1.09 nohead lt 1 lw 40
set arrow from 25,1.11 to 33,1.11 nohead lt 4 lw 10
set arrow from 34,1.09 to 56,1.09 nohead lt 1 lw 40
set arrow from 57,1.07 to 76,1.07 nohead lt 3 lw 10
set arrow from 77,1.09 to 99,1.09 nohead lt 1 lw 40
set arrow from 100,1.11 to 108,1.11 nohead lt 4 lw 10
set arrow from 109,1.09 to 131,1.09 nohead lt 1 lw 40
set arrow from 132,1.07 to 149,1.07 nohead lt 3 lw 10
set arrow from 150,1.09 to 169,1.09 nohead lt 1 lw 40
set arrow from 170,1.11 to 183,1.11 nohead lt 4 lw 10
set arrow from 184,1.09 to 206,1.09 nohead lt 1 lw 40
set arrow from 207,1.07 to 219,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPK7|Q6YPK7_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:219]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPK7_Q6YPK7_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPK7_Q6YPK7_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
