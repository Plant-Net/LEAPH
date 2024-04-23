set arrow from 1,1.07 to 52,1.07 nohead lt 3 lw 10
set arrow from 53,1.09 to 75,1.09 nohead lt 1 lw 40
set arrow from 76,1.11 to 94,1.11 nohead lt 4 lw 10
set arrow from 95,1.09 to 117,1.09 nohead lt 1 lw 40
set arrow from 118,1.07 to 123,1.07 nohead lt 3 lw 10
set arrow from 124,1.09 to 146,1.09 nohead lt 1 lw 40
set arrow from 147,1.11 to 160,1.11 nohead lt 4 lw 10
set arrow from 161,1.09 to 183,1.09 nohead lt 1 lw 40
set arrow from 184,1.07 to 203,1.07 nohead lt 3 lw 10
set arrow from 204,1.09 to 226,1.09 nohead lt 1 lw 40
set arrow from 227,1.11 to 230,1.11 nohead lt 4 lw 10
set arrow from 231,1.09 to 253,1.09 nohead lt 1 lw 40
set arrow from 254,1.07 to 274,1.07 nohead lt 3 lw 10
set arrow from 275,1.09 to 297,1.09 nohead lt 1 lw 40
set arrow from 298,1.11 to 311,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YRF8|Q6YRF8_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:311]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YRF8_Q6YRF8_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YRF8_Q6YRF8_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
