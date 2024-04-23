set arrow from 1,1.07 to 28,1.07 nohead lt 3 lw 10
set arrow from 29,1.09 to 51,1.09 nohead lt 1 lw 40
set arrow from 52,1.11 to 398,1.11 nohead lt 4 lw 10
set arrow from 399,1.09 to 421,1.09 nohead lt 1 lw 40
set arrow from 422,1.07 to 445,1.07 nohead lt 3 lw 10
set arrow from 446,1.09 to 468,1.09 nohead lt 1 lw 40
set arrow from 469,1.11 to 477,1.11 nohead lt 4 lw 10
set arrow from 478,1.09 to 497,1.09 nohead lt 1 lw 40
set arrow from 498,1.07 to 572,1.07 nohead lt 3 lw 10
set arrow from 573,1.09 to 595,1.09 nohead lt 1 lw 40
set arrow from 596,1.11 to 609,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YQB8|Q6YQB8_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:609]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YQB8_Q6YQB8_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YQB8_Q6YQB8_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
