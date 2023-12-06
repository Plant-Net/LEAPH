set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 34,1.09 nohead lt 1 lw 40
set arrow from 35,1.07 to 38,1.07 nohead lt 3 lw 10
set arrow from 39,1.09 to 61,1.09 nohead lt 1 lw 40
set arrow from 62,1.11 to 65,1.11 nohead lt 4 lw 10
set arrow from 66,1.09 to 88,1.09 nohead lt 1 lw 40
set arrow from 89,1.07 to 96,1.07 nohead lt 3 lw 10
set arrow from 97,1.09 to 119,1.09 nohead lt 1 lw 40
set arrow from 120,1.11 to 144,1.11 nohead lt 4 lw 10
set arrow from 145,1.09 to 167,1.09 nohead lt 1 lw 40
set arrow from 168,1.07 to 173,1.07 nohead lt 3 lw 10
set arrow from 174,1.09 to 196,1.09 nohead lt 1 lw 40
set arrow from 197,1.11 to 199,1.11 nohead lt 4 lw 10
set arrow from 200,1.09 to 221,1.09 nohead lt 1 lw 40
set arrow from 222,1.07 to 227,1.07 nohead lt 3 lw 10
set arrow from 228,1.09 to 247,1.09 nohead lt 1 lw 40
set arrow from 248,1.11 to 256,1.11 nohead lt 4 lw 10
set arrow from 257,1.09 to 279,1.09 nohead lt 1 lw 40
set arrow from 280,1.07 to 364,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIK5|Q2NIK5_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:364]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIK5_Q2NIK5_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIK5_Q2NIK5_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
