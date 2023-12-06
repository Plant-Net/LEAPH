set arrow from 1,1.07 to 57,1.07 nohead lt 3 lw 10
set arrow from 58,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.11 to 84,1.11 nohead lt 4 lw 10
set arrow from 85,1.09 to 104,1.09 nohead lt 1 lw 40
set arrow from 105,1.07 to 252,1.07 nohead lt 3 lw 10
set arrow from 253,1.09 to 270,1.09 nohead lt 1 lw 40
set arrow from 271,1.11 to 708,1.11 nohead lt 4 lw 10
set arrow from 709,1.09 to 731,1.09 nohead lt 1 lw 40
set arrow from 732,1.07 to 735,1.07 nohead lt 3 lw 10
set arrow from 736,1.09 to 758,1.09 nohead lt 1 lw 40
set arrow from 759,1.11 to 785,1.11 nohead lt 4 lw 10
set arrow from 786,1.09 to 808,1.09 nohead lt 1 lw 40
set arrow from 809,1.07 to 812,1.07 nohead lt 3 lw 10
set arrow from 813,1.09 to 835,1.09 nohead lt 1 lw 40
set arrow from 836,1.11 to 852,1.11 nohead lt 4 lw 10
set arrow from 853,1.09 to 875,1.09 nohead lt 1 lw 40
set arrow from 876,1.07 to 887,1.07 nohead lt 3 lw 10
set arrow from 888,1.09 to 905,1.09 nohead lt 1 lw 40
set arrow from 906,1.11 to 920,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NKA8|Q2NKA8_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:920]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NKA8_Q2NKA8_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NKA8_Q2NKA8_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
