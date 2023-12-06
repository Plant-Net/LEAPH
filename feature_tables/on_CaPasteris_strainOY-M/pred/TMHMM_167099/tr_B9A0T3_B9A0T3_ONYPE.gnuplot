set arrow from 1,1.07 to 18,1.07 nohead lt 3 lw 10
set arrow from 19,1.09 to 36,1.09 nohead lt 1 lw 40
set arrow from 37,1.11 to 50,1.11 nohead lt 4 lw 10
set arrow from 51,1.09 to 73,1.09 nohead lt 1 lw 40
set arrow from 74,1.07 to 93,1.07 nohead lt 3 lw 10
set arrow from 94,1.09 to 111,1.09 nohead lt 1 lw 40
set arrow from 112,1.11 to 161,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B9A0T3|B9A0T3_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:161]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_B9A0T3_B9A0T3_ONYPE.eps"
plot "./TMHMM_167099/tr_B9A0T3_B9A0T3_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
