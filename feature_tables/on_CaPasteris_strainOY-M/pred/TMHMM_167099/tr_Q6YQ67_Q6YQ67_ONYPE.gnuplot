set arrow from 1,1.07 to 23,1.07 nohead lt 3 lw 10
set arrow from 24,1.09 to 46,1.09 nohead lt 1 lw 40
set arrow from 47,1.11 to 49,1.11 nohead lt 4 lw 10
set arrow from 50,1.09 to 72,1.09 nohead lt 1 lw 40
set arrow from 73,1.07 to 84,1.07 nohead lt 3 lw 10
set arrow from 85,1.09 to 107,1.09 nohead lt 1 lw 40
set arrow from 108,1.11 to 135,1.11 nohead lt 4 lw 10
set arrow from 136,1.09 to 158,1.09 nohead lt 1 lw 40
set arrow from 159,1.07 to 170,1.07 nohead lt 3 lw 10
set arrow from 171,1.09 to 190,1.09 nohead lt 1 lw 40
set arrow from 191,1.11 to 193,1.11 nohead lt 4 lw 10
set arrow from 194,1.09 to 213,1.09 nohead lt 1 lw 40
set arrow from 214,1.07 to 220,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQ67|Q6YQ67_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:220]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQ67_Q6YQ67_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQ67_Q6YQ67_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
