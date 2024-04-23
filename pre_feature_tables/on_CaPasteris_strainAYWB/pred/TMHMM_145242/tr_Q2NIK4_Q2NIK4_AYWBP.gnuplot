set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 35,1.09 nohead lt 1 lw 40
set arrow from 36,1.11 to 65,1.11 nohead lt 4 lw 10
set arrow from 66,1.09 to 85,1.09 nohead lt 1 lw 40
set arrow from 86,1.07 to 97,1.07 nohead lt 3 lw 10
set arrow from 98,1.09 to 117,1.09 nohead lt 1 lw 40
set arrow from 118,1.11 to 148,1.11 nohead lt 4 lw 10
set arrow from 149,1.09 to 171,1.09 nohead lt 1 lw 40
set arrow from 172,1.07 to 177,1.07 nohead lt 3 lw 10
set arrow from 178,1.09 to 200,1.09 nohead lt 1 lw 40
set arrow from 201,1.11 to 203,1.11 nohead lt 4 lw 10
set arrow from 204,1.09 to 221,1.09 nohead lt 1 lw 40
set arrow from 222,1.07 to 227,1.07 nohead lt 3 lw 10
set arrow from 228,1.09 to 250,1.09 nohead lt 1 lw 40
set arrow from 251,1.11 to 259,1.11 nohead lt 4 lw 10
set arrow from 260,1.09 to 282,1.09 nohead lt 1 lw 40
set arrow from 283,1.07 to 357,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIK4|Q2NIK4_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:357]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIK4_Q2NIK4_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIK4_Q2NIK4_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
