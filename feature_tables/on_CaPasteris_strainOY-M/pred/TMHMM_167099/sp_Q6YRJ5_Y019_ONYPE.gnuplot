set arrow from 1,1.11 to 10,1.11 nohead lt 4 lw 10
set arrow from 11,1.09 to 33,1.09 nohead lt 1 lw 40
set arrow from 34,1.07 to 39,1.07 nohead lt 3 lw 10
set arrow from 40,1.09 to 62,1.09 nohead lt 1 lw 40
set arrow from 63,1.11 to 74,1.11 nohead lt 4 lw 10
set arrow from 75,1.09 to 97,1.09 nohead lt 1 lw 40
set arrow from 98,1.07 to 108,1.07 nohead lt 3 lw 10
set arrow from 109,1.09 to 128,1.09 nohead lt 1 lw 40
set arrow from 129,1.11 to 142,1.11 nohead lt 4 lw 10
set arrow from 143,1.09 to 165,1.09 nohead lt 1 lw 40
set arrow from 166,1.07 to 185,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for sp|Q6YRJ5|Y019_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:185]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/sp_Q6YRJ5_Y019_ONYPE.eps"
plot "./TMHMM_167099/sp_Q6YRJ5_Y019_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
