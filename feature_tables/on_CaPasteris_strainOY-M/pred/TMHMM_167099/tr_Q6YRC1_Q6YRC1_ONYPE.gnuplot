set arrow from 1,1.07 to 12,1.07 nohead lt 3 lw 10
set arrow from 13,1.09 to 32,1.09 nohead lt 1 lw 40
set arrow from 33,1.11 to 62,1.11 nohead lt 4 lw 10
set arrow from 63,1.09 to 82,1.09 nohead lt 1 lw 40
set arrow from 83,1.07 to 94,1.07 nohead lt 3 lw 10
set arrow from 95,1.09 to 114,1.09 nohead lt 1 lw 40
set arrow from 115,1.11 to 145,1.11 nohead lt 4 lw 10
set arrow from 146,1.09 to 168,1.09 nohead lt 1 lw 40
set arrow from 169,1.07 to 174,1.07 nohead lt 3 lw 10
set arrow from 175,1.09 to 197,1.09 nohead lt 1 lw 40
set arrow from 198,1.11 to 200,1.11 nohead lt 4 lw 10
set arrow from 201,1.09 to 218,1.09 nohead lt 1 lw 40
set arrow from 219,1.07 to 224,1.07 nohead lt 3 lw 10
set arrow from 225,1.09 to 247,1.09 nohead lt 1 lw 40
set arrow from 248,1.11 to 256,1.11 nohead lt 4 lw 10
set arrow from 257,1.09 to 279,1.09 nohead lt 1 lw 40
set arrow from 280,1.07 to 344,1.07 nohead lt 3 lw 10
set arrow from 345,1.09 to 367,1.09 nohead lt 1 lw 40
set arrow from 368,1.11 to 370,1.11 nohead lt 4 lw 10
set arrow from 371,1.09 to 390,1.09 nohead lt 1 lw 40
set arrow from 391,1.07 to 396,1.07 nohead lt 3 lw 10
set arrow from 397,1.09 to 416,1.09 nohead lt 1 lw 40
set arrow from 417,1.11 to 420,1.11 nohead lt 4 lw 10
set arrow from 421,1.09 to 443,1.09 nohead lt 1 lw 40
set arrow from 444,1.07 to 451,1.07 nohead lt 3 lw 10
set arrow from 452,1.09 to 474,1.09 nohead lt 1 lw 40
set arrow from 475,1.11 to 498,1.11 nohead lt 4 lw 10
set arrow from 499,1.09 to 514,1.09 nohead lt 1 lw 40
set arrow from 515,1.07 to 525,1.07 nohead lt 3 lw 10
set arrow from 526,1.09 to 548,1.09 nohead lt 1 lw 40
set arrow from 549,1.11 to 552,1.11 nohead lt 4 lw 10
set arrow from 553,1.09 to 575,1.09 nohead lt 1 lw 40
set arrow from 576,1.07 to 579,1.07 nohead lt 3 lw 10
set arrow from 580,1.09 to 602,1.09 nohead lt 1 lw 40
set arrow from 603,1.11 to 611,1.11 nohead lt 4 lw 10
set arrow from 612,1.09 to 634,1.09 nohead lt 1 lw 40
set arrow from 635,1.07 to 719,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for tr|Q6YRC1|Q6YRC1_ONYPE"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:719]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_167099/tr_Q6YRC1_Q6YRC1_ONYPE.eps"
plot "./TMHMM_167099/tr_Q6YRC1_Q6YRC1_ONYPE.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
