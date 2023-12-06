set arrow from 1,1.07 to 20,1.07 nohead lt 3 lw 10
set arrow from 21,1.09 to 43,1.09 nohead lt 1 lw 40
set arrow from 44,1.11 to 47,1.11 nohead lt 4 lw 10
set arrow from 48,1.09 to 70,1.09 nohead lt 1 lw 40
set arrow from 71,1.07 to 90,1.07 nohead lt 3 lw 10
set arrow from 91,1.09 to 113,1.09 nohead lt 1 lw 40
set arrow from 114,1.11 to 122,1.11 nohead lt 4 lw 10
set arrow from 123,1.09 to 145,1.09 nohead lt 1 lw 40
set arrow from 146,1.07 to 157,1.07 nohead lt 3 lw 10
set arrow from 158,1.09 to 180,1.09 nohead lt 1 lw 40
set arrow from 181,1.11 to 194,1.11 nohead lt 4 lw 10
set arrow from 195,1.09 to 217,1.09 nohead lt 1 lw 40
set arrow from 218,1.07 to 223,1.07 nohead lt 3 lw 10
set arrow from 224,1.09 to 246,1.09 nohead lt 1 lw 40
set arrow from 247,1.11 to 250,1.11 nohead lt 4 lw 10
set arrow from 251,1.09 to 273,1.09 nohead lt 1 lw 40
set arrow from 274,1.07 to 285,1.07 nohead lt 3 lw 10
set arrow from 286,1.09 to 308,1.09 nohead lt 1 lw 40
set arrow from 309,1.11 to 804,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for lcl|CP097583.1_cds_USQ93318.1_1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:804]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_263138/lcl_CP097583.1_cds_USQ93318.1_1.eps"
plot "./TMHMM_263138/lcl_CP097583.1_cds_USQ93318.1_1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
