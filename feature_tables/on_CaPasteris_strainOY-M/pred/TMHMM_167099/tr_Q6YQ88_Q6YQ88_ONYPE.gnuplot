set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 46,1.09 nohead lt 1 lw 40
set arrow from 47,1.07 to 65,1.07 nohead lt 3 lw 10
set arrow from 66,1.09 to 88,1.09 nohead lt 1 lw 40
set arrow from 89,1.11 to 102,1.11 nohead lt 4 lw 10
set arrow from 103,1.09 to 122,1.09 nohead lt 1 lw 40
set arrow from 123,1.07 to 165,1.07 nohead lt 3 lw 10
set arrow from 166,1.09 to 188,1.09 nohead lt 1 lw 40
set arrow from 189,1.11 to 197,1.11 nohead lt 4 lw 10
set arrow from 198,1.09 to 220,1.09 nohead lt 1 lw 40
set arrow from 221,1.07 to 232,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQ88|Q6YQ88_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:232]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQ88_Q6YQ88_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQ88_Q6YQ88_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
