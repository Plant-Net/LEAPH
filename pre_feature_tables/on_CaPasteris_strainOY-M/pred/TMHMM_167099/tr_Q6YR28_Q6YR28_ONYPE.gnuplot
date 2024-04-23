set arrow from 1,1.07 to 8,1.07 nohead lt 3 lw 10
set arrow from 9,1.09 to 31,1.09 nohead lt 1 lw 40
set arrow from 32,1.11 to 101,1.11 nohead lt 4 lw 10
set arrow from 102,1.09 to 124,1.09 nohead lt 1 lw 40
set arrow from 125,1.07 to 130,1.07 nohead lt 3 lw 10
set arrow from 131,1.09 to 153,1.09 nohead lt 1 lw 40
set arrow from 154,1.11 to 172,1.11 nohead lt 4 lw 10
set arrow from 173,1.09 to 190,1.09 nohead lt 1 lw 40
set arrow from 191,1.07 to 227,1.07 nohead lt 3 lw 10
set arrow from 228,1.09 to 250,1.09 nohead lt 1 lw 40
set arrow from 251,1.11 to 271,1.11 nohead lt 4 lw 10
set arrow from 272,1.09 to 293,1.09 nohead lt 1 lw 40
set arrow from 294,1.07 to 308,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YR28|Q6YR28_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:308]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YR28_Q6YR28_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YR28_Q6YR28_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
