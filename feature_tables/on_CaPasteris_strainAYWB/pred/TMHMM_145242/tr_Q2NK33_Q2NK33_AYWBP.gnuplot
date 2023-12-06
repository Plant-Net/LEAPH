set arrow from 1,1.07 to 28,1.07 nohead lt 3 lw 10
set arrow from 29,1.09 to 51,1.09 nohead lt 1 lw 40
set arrow from 52,1.11 to 86,1.11 nohead lt 4 lw 10
set arrow from 87,1.09 to 109,1.09 nohead lt 1 lw 40
set arrow from 110,1.07 to 125,1.07 nohead lt 3 lw 10
set arrow from 126,1.09 to 148,1.09 nohead lt 1 lw 40
set arrow from 149,1.11 to 157,1.11 nohead lt 4 lw 10
set arrow from 158,1.09 to 180,1.09 nohead lt 1 lw 40
set arrow from 181,1.07 to 200,1.07 nohead lt 3 lw 10
set arrow from 201,1.09 to 223,1.09 nohead lt 1 lw 40
set arrow from 224,1.11 to 249,1.11 nohead lt 4 lw 10
set arrow from 250,1.09 to 272,1.09 nohead lt 1 lw 40
set arrow from 273,1.07 to 296,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NK33|Q2NK33_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:296]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NK33_Q2NK33_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NK33_Q2NK33_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
