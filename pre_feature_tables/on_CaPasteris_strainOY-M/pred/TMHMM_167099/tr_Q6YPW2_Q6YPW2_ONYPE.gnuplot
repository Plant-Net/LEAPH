set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 67,1.11 nohead lt 4 lw 10
set arrow from 68,1.09 to 90,1.09 nohead lt 1 lw 40
set arrow from 91,1.07 to 102,1.07 nohead lt 3 lw 10
set arrow from 103,1.09 to 125,1.09 nohead lt 1 lw 40
set arrow from 126,1.11 to 139,1.11 nohead lt 4 lw 10
set arrow from 140,1.09 to 162,1.09 nohead lt 1 lw 40
set arrow from 163,1.07 to 182,1.07 nohead lt 3 lw 10
set arrow from 183,1.09 to 200,1.09 nohead lt 1 lw 40
set arrow from 201,1.11 to 214,1.11 nohead lt 4 lw 10
set arrow from 215,1.09 to 237,1.09 nohead lt 1 lw 40
set arrow from 238,1.07 to 244,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPW2|Q6YPW2_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:244]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPW2_Q6YPW2_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPW2_Q6YPW2_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
