set arrow from 1,1.07 to 42,1.07 nohead lt 3 lw 10
set arrow from 43,1.09 to 65,1.09 nohead lt 1 lw 40
set arrow from 66,1.11 to 69,1.11 nohead lt 4 lw 10
set arrow from 70,1.09 to 87,1.09 nohead lt 1 lw 40
set arrow from 88,1.07 to 212,1.07 nohead lt 3 lw 10
set arrow from 213,1.09 to 235,1.09 nohead lt 1 lw 40
set arrow from 236,1.11 to 249,1.11 nohead lt 4 lw 10
set arrow from 250,1.09 to 281,1.09 nohead lt 1 lw 40
set arrow from 282,1.07 to 607,1.07 nohead lt 3 lw 10
set arrow from 608,1.09 to 630,1.09 nohead lt 1 lw 40
set arrow from 631,1.11 to 679,1.11 nohead lt 4 lw 10
set arrow from 680,1.09 to 699,1.09 nohead lt 1 lw 40
set arrow from 700,1.07 to 710,1.07 nohead lt 3 lw 10
set arrow from 711,1.09 to 730,1.09 nohead lt 1 lw 40
set arrow from 731,1.11 to 739,1.11 nohead lt 4 lw 10
set arrow from 740,1.09 to 757,1.09 nohead lt 1 lw 40
set arrow from 758,1.07 to 768,1.07 nohead lt 3 lw 10
set arrow from 769,1.09 to 788,1.09 nohead lt 1 lw 40
set arrow from 789,1.11 to 810,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for tr|B1VAN4|B1VAN4_PHYAS"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:810]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_187945/tr_B1VAN4_B1VAN4_PHYAS.eps"
plot "./TMHMM_187945/tr_B1VAN4_B1VAN4_PHYAS.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
