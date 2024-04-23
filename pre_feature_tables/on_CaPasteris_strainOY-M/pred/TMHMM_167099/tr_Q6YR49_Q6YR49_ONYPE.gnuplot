set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 60,1.11 nohead lt 4 lw 10
set arrow from 61,1.09 to 83,1.09 nohead lt 1 lw 40
set arrow from 84,1.07 to 116,1.07 nohead lt 3 lw 10
set arrow from 117,1.09 to 139,1.09 nohead lt 1 lw 40
set arrow from 140,1.11 to 148,1.11 nohead lt 4 lw 10
set arrow from 149,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.07 to 169,1.07 nohead lt 3 lw 10
set arrow from 170,1.09 to 192,1.09 nohead lt 1 lw 40
set arrow from 193,1.11 to 215,1.11 nohead lt 4 lw 10
set arrow from 216,1.09 to 235,1.09 nohead lt 1 lw 40
set arrow from 236,1.07 to 239,1.07 nohead lt 3 lw 10
set arrow from 240,1.09 to 262,1.09 nohead lt 1 lw 40
set arrow from 263,1.11 to 281,1.11 nohead lt 4 lw 10
set arrow from 282,1.09 to 304,1.09 nohead lt 1 lw 40
set arrow from 305,1.07 to 305,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YR49|Q6YR49_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:305]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YR49_Q6YR49_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YR49_Q6YR49_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
