set arrow from 1,1.07 to 57,1.07 nohead lt 3 lw 10
set arrow from 58,1.09 to 80,1.09 nohead lt 1 lw 40
set arrow from 81,1.11 to 84,1.11 nohead lt 4 lw 10
set arrow from 85,1.09 to 104,1.09 nohead lt 1 lw 40
set arrow from 105,1.07 to 252,1.07 nohead lt 3 lw 10
set arrow from 253,1.09 to 270,1.09 nohead lt 1 lw 40
set arrow from 271,1.11 to 284,1.11 nohead lt 4 lw 10
set arrow from 285,1.09 to 307,1.09 nohead lt 1 lw 40
set arrow from 308,1.07 to 708,1.07 nohead lt 3 lw 10
set arrow from 709,1.09 to 731,1.09 nohead lt 1 lw 40
set arrow from 732,1.11 to 735,1.11 nohead lt 4 lw 10
set arrow from 736,1.09 to 758,1.09 nohead lt 1 lw 40
set arrow from 759,1.07 to 786,1.07 nohead lt 3 lw 10
set arrow from 787,1.09 to 809,1.09 nohead lt 1 lw 40
set arrow from 810,1.11 to 813,1.11 nohead lt 4 lw 10
set arrow from 814,1.09 to 836,1.09 nohead lt 1 lw 40
set arrow from 837,1.07 to 852,1.07 nohead lt 3 lw 10
set arrow from 853,1.09 to 868,1.09 nohead lt 1 lw 40
set arrow from 869,1.11 to 882,1.11 nohead lt 4 lw 10
set arrow from 883,1.09 to 905,1.09 nohead lt 1 lw 40
set arrow from 906,1.07 to 920,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YRI5|Q6YRI5_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:920]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YRI5_Q6YRI5_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YRI5_Q6YRI5_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
