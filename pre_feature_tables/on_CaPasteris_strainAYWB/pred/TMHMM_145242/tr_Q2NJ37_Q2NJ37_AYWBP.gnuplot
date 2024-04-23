set arrow from 1,1.07 to 25,1.07 nohead lt 3 lw 10
set arrow from 26,1.09 to 48,1.09 nohead lt 1 lw 40
set arrow from 49,1.11 to 77,1.11 nohead lt 4 lw 10
set arrow from 78,1.09 to 95,1.09 nohead lt 1 lw 40
set arrow from 96,1.07 to 115,1.07 nohead lt 3 lw 10
set arrow from 116,1.09 to 138,1.09 nohead lt 1 lw 40
set arrow from 139,1.11 to 152,1.11 nohead lt 4 lw 10
set arrow from 153,1.09 to 175,1.09 nohead lt 1 lw 40
set arrow from 176,1.07 to 183,1.07 nohead lt 3 lw 10
set arrow from 184,1.09 to 206,1.09 nohead lt 1 lw 40
set arrow from 207,1.11 to 215,1.11 nohead lt 4 lw 10
set arrow from 216,1.09 to 238,1.09 nohead lt 1 lw 40
set arrow from 239,1.07 to 258,1.07 nohead lt 3 lw 10
set arrow from 259,1.09 to 281,1.09 nohead lt 1 lw 40
set arrow from 282,1.11 to 295,1.11 nohead lt 4 lw 10
set arrow from 296,1.09 to 313,1.09 nohead lt 1 lw 40
set arrow from 314,1.07 to 338,1.07 nohead lt 3 lw 10
set arrow from 339,1.09 to 361,1.09 nohead lt 1 lw 40
set arrow from 362,1.11 to 391,1.11 nohead lt 4 lw 10
set arrow from 392,1.09 to 409,1.09 nohead lt 1 lw 40
set arrow from 410,1.07 to 415,1.07 nohead lt 3 lw 10
set arrow from 416,1.09 to 435,1.09 nohead lt 1 lw 40
set arrow from 436,1.11 to 454,1.11 nohead lt 4 lw 10
set arrow from 455,1.09 to 477,1.09 nohead lt 1 lw 40
set arrow from 478,1.07 to 502,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJ37|Q2NJ37_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:502]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJ37_Q2NJ37_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJ37_Q2NJ37_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
