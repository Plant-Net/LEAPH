set arrow from 1,1.07 to 6,1.07 nohead lt 3 lw 10
set arrow from 7,1.09 to 29,1.09 nohead lt 1 lw 40
set arrow from 30,1.11 to 43,1.11 nohead lt 4 lw 10
set arrow from 44,1.09 to 66,1.09 nohead lt 1 lw 40
set arrow from 67,1.07 to 70,1.07 nohead lt 3 lw 10
set arrow from 71,1.09 to 93,1.09 nohead lt 1 lw 40
set arrow from 94,1.11 to 107,1.11 nohead lt 4 lw 10
set arrow from 108,1.09 to 130,1.09 nohead lt 1 lw 40
set arrow from 131,1.07 to 141,1.07 nohead lt 3 lw 10
set arrow from 142,1.09 to 164,1.09 nohead lt 1 lw 40
set arrow from 165,1.11 to 173,1.11 nohead lt 4 lw 10
set arrow from 174,1.09 to 196,1.09 nohead lt 1 lw 40
set arrow from 197,1.07 to 207,1.07 nohead lt 3 lw 10
set arrow from 208,1.09 to 230,1.09 nohead lt 1 lw 40
set arrow from 231,1.11 to 239,1.11 nohead lt 4 lw 10
set arrow from 240,1.09 to 262,1.09 nohead lt 1 lw 40
set arrow from 263,1.07 to 274,1.07 nohead lt 3 lw 10
set arrow from 275,1.09 to 297,1.09 nohead lt 1 lw 40
set arrow from 298,1.11 to 1032,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for lcl|CP097583.1_cds_USQ93160.1_1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:1032]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_263138/lcl_CP097583.1_cds_USQ93160.1_1.eps"
plot "./TMHMM_263138/lcl_CP097583.1_cds_USQ93160.1_1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
