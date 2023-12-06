set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 38,1.09 nohead lt 1 lw 40
set arrow from 39,1.11 to 50,1.11 nohead lt 4 lw 10
set arrow from 51,1.09 to 73,1.09 nohead lt 1 lw 40
set arrow from 74,1.07 to 93,1.07 nohead lt 3 lw 10
set arrow from 94,1.09 to 113,1.09 nohead lt 1 lw 40
set arrow from 114,1.11 to 127,1.11 nohead lt 4 lw 10
set arrow from 128,1.09 to 150,1.09 nohead lt 1 lw 40
set arrow from 151,1.07 to 185,1.07 nohead lt 3 lw 10
set arrow from 186,1.09 to 208,1.09 nohead lt 1 lw 40
set arrow from 209,1.11 to 222,1.11 nohead lt 4 lw 10
set arrow from 223,1.09 to 242,1.09 nohead lt 1 lw 40
set arrow from 243,1.07 to 282,1.07 nohead lt 3 lw 10
set arrow from 283,1.09 to 305,1.09 nohead lt 1 lw 40
set arrow from 306,1.11 to 347,1.11 nohead lt 4 lw 10
set arrow from 348,1.09 to 370,1.09 nohead lt 1 lw 40
set arrow from 371,1.07 to 371,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPK5|Q6YPK5_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:371]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPK5_Q6YPK5_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPK5_Q6YPK5_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
