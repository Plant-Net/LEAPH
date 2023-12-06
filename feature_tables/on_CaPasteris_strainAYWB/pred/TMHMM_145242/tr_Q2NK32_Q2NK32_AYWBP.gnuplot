set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 73,1.11 nohead lt 4 lw 10
set arrow from 74,1.09 to 96,1.09 nohead lt 1 lw 40
set arrow from 97,1.07 to 108,1.07 nohead lt 3 lw 10
set arrow from 109,1.09 to 131,1.09 nohead lt 1 lw 40
set arrow from 132,1.11 to 150,1.11 nohead lt 4 lw 10
set arrow from 151,1.09 to 173,1.09 nohead lt 1 lw 40
set arrow from 174,1.07 to 196,1.07 nohead lt 3 lw 10
set arrow from 197,1.09 to 219,1.09 nohead lt 1 lw 40
set arrow from 220,1.11 to 250,1.11 nohead lt 4 lw 10
set arrow from 251,1.09 to 270,1.09 nohead lt 1 lw 40
set arrow from 271,1.07 to 282,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NK32|Q2NK32_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:282]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NK32_Q2NK32_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NK32_Q2NK32_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
