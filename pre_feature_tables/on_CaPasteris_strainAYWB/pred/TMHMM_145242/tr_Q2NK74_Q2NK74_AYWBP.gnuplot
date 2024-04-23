set arrow from 1,1.07 to 34,1.07 nohead lt 3 lw 10
set arrow from 35,1.09 to 57,1.09 nohead lt 1 lw 40
set arrow from 58,1.11 to 71,1.11 nohead lt 4 lw 10
set arrow from 72,1.09 to 89,1.09 nohead lt 1 lw 40
set arrow from 90,1.07 to 101,1.07 nohead lt 3 lw 10
set arrow from 102,1.09 to 121,1.09 nohead lt 1 lw 40
set arrow from 122,1.11 to 155,1.11 nohead lt 4 lw 10
set arrow from 156,1.09 to 178,1.09 nohead lt 1 lw 40
set arrow from 179,1.07 to 190,1.07 nohead lt 3 lw 10
set arrow from 191,1.09 to 213,1.09 nohead lt 1 lw 40
set arrow from 214,1.11 to 267,1.11 nohead lt 4 lw 10
set arrow from 268,1.09 to 290,1.09 nohead lt 1 lw 40
set arrow from 291,1.07 to 325,1.07 nohead lt 3 lw 10
set arrow from 326,1.09 to 348,1.09 nohead lt 1 lw 40
set arrow from 349,1.11 to 362,1.11 nohead lt 4 lw 10
set arrow from 363,1.09 to 382,1.09 nohead lt 1 lw 40
set arrow from 383,1.07 to 422,1.07 nohead lt 3 lw 10
set arrow from 423,1.09 to 445,1.09 nohead lt 1 lw 40
set arrow from 446,1.11 to 487,1.11 nohead lt 4 lw 10
set arrow from 488,1.09 to 510,1.09 nohead lt 1 lw 40
set arrow from 511,1.07 to 511,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NK74|Q2NK74_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:511]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NK74_Q2NK74_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NK74_Q2NK74_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
