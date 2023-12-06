set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 40,1.09 nohead lt 1 lw 40
set arrow from 41,1.11 to 43,1.11 nohead lt 4 lw 10
set arrow from 44,1.09 to 66,1.09 nohead lt 1 lw 40
set arrow from 67,1.07 to 78,1.07 nohead lt 3 lw 10
set arrow from 79,1.09 to 101,1.09 nohead lt 1 lw 40
set arrow from 102,1.11 to 145,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NK99|Q2NK99_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:145]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NK99_Q2NK99_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NK99_Q2NK99_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
