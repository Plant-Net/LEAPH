set arrow from 1,1.07 to 49,1.07 nohead lt 3 lw 10
set arrow from 50,1.09 to 72,1.09 nohead lt 1 lw 40
set arrow from 73,1.11 to 133,1.11 nohead lt 4 lw 10
set arrow from 134,1.09 to 156,1.09 nohead lt 1 lw 40
set arrow from 157,1.07 to 291,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJP8|Q2NJP8_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:291]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJP8_Q2NJP8_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJP8_Q2NJP8_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
