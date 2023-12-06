set arrow from 1,1.07 to 16,1.07 nohead lt 3 lw 10
set arrow from 17,1.09 to 36,1.09 nohead lt 1 lw 40
set arrow from 37,1.11 to 457,1.11 nohead lt 4 lw 10
set arrow from 458,1.09 to 476,1.09 nohead lt 1 lw 40
set arrow from 477,1.07 to 484,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQ73|Q6YQ73_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:484]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQ73_Q6YQ73_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQ73_Q6YQ73_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
