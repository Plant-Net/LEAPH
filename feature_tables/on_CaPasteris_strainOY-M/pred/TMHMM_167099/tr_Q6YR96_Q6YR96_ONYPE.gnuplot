set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.11 to 46,1.11 nohead lt 4 lw 10
set arrow from 47,1.09 to 66,1.09 nohead lt 1 lw 40
set arrow from 67,1.07 to 70,1.07 nohead lt 3 lw 10
set arrow from 71,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.11 to 112,1.11 nohead lt 4 lw 10
set arrow from 113,1.09 to 135,1.09 nohead lt 1 lw 40
set arrow from 136,1.07 to 147,1.07 nohead lt 3 lw 10
set arrow from 148,1.09 to 170,1.09 nohead lt 1 lw 40
set arrow from 171,1.11 to 201,1.11 nohead lt 4 lw 10
set arrow from 202,1.09 to 224,1.09 nohead lt 1 lw 40
set arrow from 225,1.07 to 238,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YR96|Q6YR96_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:238]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YR96_Q6YR96_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YR96_Q6YR96_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
