set arrow from 1,1.11 to 3,1.11 nohead lt 4 lw 10
set arrow from 4,1.09 to 26,1.09 nohead lt 1 lw 40
set arrow from 27,1.07 to 54,1.07 nohead lt 3 lw 10
set arrow from 55,1.09 to 77,1.09 nohead lt 1 lw 40
set arrow from 78,1.11 to 96,1.11 nohead lt 4 lw 10
set arrow from 97,1.09 to 116,1.09 nohead lt 1 lw 40
set arrow from 117,1.07 to 122,1.07 nohead lt 3 lw 10
set arrow from 123,1.09 to 145,1.09 nohead lt 1 lw 40
set arrow from 146,1.11 to 148,1.11 nohead lt 4 lw 10
set arrow from 149,1.09 to 171,1.09 nohead lt 1 lw 40
set arrow from 172,1.07 to 172,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for sp|P60823|PLSY_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:172]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/sp_P60823_PLSY_ONYPE.eps"
plot "./TMHMM_167099/sp_P60823_PLSY_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
