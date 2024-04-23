set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.11 to 43,1.11 nohead lt 4 lw 10
set arrow from 44,1.09 to 61,1.09 nohead lt 1 lw 40
set arrow from 62,1.07 to 72,1.07 nohead lt 3 lw 10
set arrow from 73,1.09 to 95,1.09 nohead lt 1 lw 40
set arrow from 96,1.11 to 112,1.11 nohead lt 4 lw 10
set arrow from 113,1.09 to 135,1.09 nohead lt 1 lw 40
set arrow from 136,1.07 to 141,1.07 nohead lt 3 lw 10
set arrow from 142,1.09 to 164,1.09 nohead lt 1 lw 40
set arrow from 165,1.11 to 173,1.11 nohead lt 4 lw 10
set arrow from 174,1.09 to 191,1.09 nohead lt 1 lw 40
set arrow from 192,1.07 to 209,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YPI6|Q6YPI6_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:209]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YPI6_Q6YPI6_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YPI6_Q6YPI6_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
