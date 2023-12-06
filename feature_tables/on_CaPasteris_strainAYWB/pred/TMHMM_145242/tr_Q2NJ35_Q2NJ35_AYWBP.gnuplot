set arrow from 1,1.07 to 19,1.07 nohead lt 3 lw 10
set arrow from 20,1.09 to 39,1.09 nohead lt 1 lw 40
set arrow from 40,1.11 to 69,1.11 nohead lt 4 lw 10
set arrow from 70,1.09 to 92,1.09 nohead lt 1 lw 40
set arrow from 93,1.07 to 104,1.07 nohead lt 3 lw 10
set arrow from 105,1.09 to 127,1.09 nohead lt 1 lw 40
set arrow from 128,1.11 to 158,1.11 nohead lt 4 lw 10
set arrow from 159,1.09 to 178,1.09 nohead lt 1 lw 40
set arrow from 179,1.07 to 190,1.07 nohead lt 3 lw 10
set arrow from 191,1.09 to 213,1.09 nohead lt 1 lw 40
set arrow from 214,1.11 to 222,1.11 nohead lt 4 lw 10
set arrow from 223,1.09 to 245,1.09 nohead lt 1 lw 40
set arrow from 246,1.07 to 275,1.07 nohead lt 3 lw 10
set arrow from 276,1.09 to 298,1.09 nohead lt 1 lw 40
set arrow from 299,1.11 to 317,1.11 nohead lt 4 lw 10
set arrow from 318,1.09 to 340,1.09 nohead lt 1 lw 40
set arrow from 341,1.07 to 360,1.07 nohead lt 3 lw 10
set arrow from 361,1.09 to 383,1.09 nohead lt 1 lw 40
set arrow from 384,1.11 to 425,1.11 nohead lt 4 lw 10
set arrow from 426,1.09 to 448,1.09 nohead lt 1 lw 40
set arrow from 449,1.07 to 459,1.07 nohead lt 3 lw 10
set arrow from 460,1.09 to 482,1.09 nohead lt 1 lw 40
set arrow from 483,1.11 to 496,1.11 nohead lt 4 lw 10
set arrow from 497,1.09 to 519,1.09 nohead lt 1 lw 40
set arrow from 520,1.07 to 531,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q2NJ35|Q2NJ35_AYWBP"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:531]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_145242/tr_Q2NJ35_Q2NJ35_AYWBP.eps"
plot "./TMHMM_145242/tr_Q2NJ35_Q2NJ35_AYWBP.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
