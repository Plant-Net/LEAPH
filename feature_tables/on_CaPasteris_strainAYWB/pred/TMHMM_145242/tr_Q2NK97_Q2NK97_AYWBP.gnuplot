set arrow from 1,1.07 to 31,1.07 nohead lt 3 lw 10
set arrow from 32,1.09 to 54,1.09 nohead lt 1 lw 40
set arrow from 55,1.11 to 82,1.11 nohead lt 4 lw 10
set arrow from 83,1.09 to 105,1.09 nohead lt 1 lw 40
set arrow from 106,1.07 to 172,1.07 nohead lt 3 lw 10
set arrow from 173,1.09 to 195,1.09 nohead lt 1 lw 40
set arrow from 196,1.11 to 270,1.11 nohead lt 4 lw 10
set arrow from 271,1.09 to 293,1.09 nohead lt 1 lw 40
set arrow from 294,1.07 to 301,1.07 nohead lt 3 lw 10
set arrow from 302,1.09 to 324,1.09 nohead lt 1 lw 40
set arrow from 325,1.11 to 614,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NK97|Q2NK97_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:614]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NK97_Q2NK97_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NK97_Q2NK97_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
