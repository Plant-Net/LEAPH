set arrow from 1,1.11 to 14,1.11 nohead lt 4 lw 10
set arrow from 15,1.09 to 37,1.09 nohead lt 1 lw 40
set arrow from 38,1.07 to 43,1.07 nohead lt 3 lw 10
set arrow from 44,1.09 to 66,1.09 nohead lt 1 lw 40
set arrow from 67,1.11 to 80,1.11 nohead lt 4 lw 10
set arrow from 81,1.09 to 103,1.09 nohead lt 1 lw 40
set arrow from 104,1.07 to 109,1.07 nohead lt 3 lw 10
set arrow from 110,1.09 to 132,1.09 nohead lt 1 lw 40
set arrow from 133,1.11 to 141,1.11 nohead lt 4 lw 10
set arrow from 142,1.09 to 164,1.09 nohead lt 1 lw 40
set arrow from 165,1.07 to 170,1.07 nohead lt 3 lw 10
set arrow from 171,1.09 to 193,1.09 nohead lt 1 lw 40
set arrow from 194,1.11 to 198,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for lcl|CP097583.1_cds_USQ93187.1_1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:198]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_263138/lcl_CP097583.1_cds_USQ93187.1_1.eps"
plot "./TMHMM_263138/lcl_CP097583.1_cds_USQ93187.1_1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
