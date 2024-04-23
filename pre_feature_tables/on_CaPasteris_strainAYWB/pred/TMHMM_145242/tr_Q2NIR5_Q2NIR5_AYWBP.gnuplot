set arrow from 1,1.11 to 19,1.11 nohead lt 4 lw 10
set arrow from 20,1.09 to 42,1.09 nohead lt 1 lw 40
set arrow from 43,1.07 to 62,1.07 nohead lt 3 lw 10
set arrow from 63,1.09 to 85,1.09 nohead lt 1 lw 40
set arrow from 86,1.11 to 99,1.11 nohead lt 4 lw 10
set arrow from 100,1.09 to 122,1.09 nohead lt 1 lw 40
set arrow from 123,1.07 to 134,1.07 nohead lt 3 lw 10
set arrow from 135,1.09 to 157,1.09 nohead lt 1 lw 40
set arrow from 158,1.11 to 171,1.11 nohead lt 4 lw 10
set arrow from 172,1.09 to 194,1.09 nohead lt 1 lw 40
set arrow from 195,1.07 to 200,1.07 nohead lt 3 lw 10
set arrow from 201,1.09 to 220,1.09 nohead lt 1 lw 40
set arrow from 221,1.11 to 223,1.11 nohead lt 4 lw 10
set arrow from 224,1.09 to 243,1.09 nohead lt 1 lw 40
set arrow from 244,1.07 to 249,1.07 nohead lt 3 lw 10
set arrow from 250,1.09 to 269,1.09 nohead lt 1 lw 40
set arrow from 270,1.11 to 279,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NIR5|Q2NIR5_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:279]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NIR5_Q2NIR5_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NIR5_Q2NIR5_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
