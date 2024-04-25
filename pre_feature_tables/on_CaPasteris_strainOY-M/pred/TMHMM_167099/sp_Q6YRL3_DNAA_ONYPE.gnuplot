set arrow from 1,1.11 to 507,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for sp|Q6YRL3|DNAA_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:507]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/sp_Q6YRL3_DNAA_ONYPE.eps"
plot "./TMHMM_167099/sp_Q6YRL3_DNAA_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit