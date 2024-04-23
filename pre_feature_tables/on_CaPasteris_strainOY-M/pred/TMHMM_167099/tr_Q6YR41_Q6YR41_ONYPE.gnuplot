set arrow from 1,1.07 to 11,1.07 nohead lt 3 lw 10
set arrow from 12,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.11 to 43,1.11 nohead lt 4 lw 10
set arrow from 44,1.09 to 61,1.09 nohead lt 1 lw 40
set arrow from 62,1.07 to 67,1.07 nohead lt 3 lw 10
set arrow from 68,1.09 to 90,1.09 nohead lt 1 lw 40
set arrow from 91,1.11 to 118,1.11 nohead lt 4 lw 10
set arrow from 119,1.09 to 138,1.09 nohead lt 1 lw 40
set arrow from 139,1.07 to 157,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YR41|Q6YR41_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:157]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YR41_Q6YR41_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YR41_Q6YR41_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
