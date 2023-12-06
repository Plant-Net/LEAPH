set arrow from 1,1.07 to 18,1.07 nohead lt 3 lw 10
set arrow from 19,1.09 to 41,1.09 nohead lt 1 lw 40
set arrow from 42,1.11 to 73,1.11 nohead lt 4 lw 10
set arrow from 74,1.09 to 96,1.09 nohead lt 1 lw 40
set arrow from 97,1.07 to 108,1.07 nohead lt 3 lw 10
set arrow from 109,1.09 to 131,1.09 nohead lt 1 lw 40
set arrow from 132,1.11 to 150,1.11 nohead lt 4 lw 10
set arrow from 151,1.09 to 170,1.09 nohead lt 1 lw 40
set arrow from 171,1.07 to 181,1.07 nohead lt 3 lw 10
set arrow from 182,1.09 to 204,1.09 nohead lt 1 lw 40
set arrow from 205,1.11 to 213,1.11 nohead lt 4 lw 10
set arrow from 214,1.09 to 233,1.09 nohead lt 1 lw 40
set arrow from 234,1.07 to 347,1.07 nohead lt 3 lw 10
set arrow from 348,1.09 to 367,1.09 nohead lt 1 lw 40
set arrow from 368,1.11 to 404,1.11 nohead lt 4 lw 10
set arrow from 405,1.09 to 427,1.09 nohead lt 1 lw 40
set arrow from 428,1.07 to 438,1.07 nohead lt 3 lw 10
set arrow from 439,1.09 to 458,1.09 nohead lt 1 lw 40
set arrow from 459,1.11 to 472,1.11 nohead lt 4 lw 10
set arrow from 473,1.09 to 495,1.09 nohead lt 1 lw 40
set arrow from 496,1.07 to 507,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAJ4|B1VAJ4_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:507]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAJ4_B1VAJ4_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAJ4_B1VAJ4_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
