set arrow from 1,1.11 to 355,1.11 nohead lt 4 lw 10
set arrow from 356,1.09 to 378,1.09 nohead lt 1 lw 40
set arrow from 379,1.07 to 384,1.07 nohead lt 3 lw 10
set arrow from 385,1.09 to 407,1.09 nohead lt 1 lw 40
set arrow from 408,1.11 to 416,1.11 nohead lt 4 lw 10
set arrow from 417,1.09 to 439,1.09 nohead lt 1 lw 40
set arrow from 440,1.07 to 445,1.07 nohead lt 3 lw 10
set arrow from 446,1.09 to 468,1.09 nohead lt 1 lw 40
set arrow from 469,1.11 to 477,1.11 nohead lt 4 lw 10
set arrow from 478,1.09 to 500,1.09 nohead lt 1 lw 40
set arrow from 501,1.07 to 506,1.07 nohead lt 3 lw 10
set arrow from 507,1.09 to 529,1.09 nohead lt 1 lw 40
set arrow from 530,1.11 to 538,1.11 nohead lt 4 lw 10
set arrow from 539,1.09 to 561,1.09 nohead lt 1 lw 40
set arrow from 562,1.07 to 573,1.07 nohead lt 3 lw 10
set arrow from 574,1.09 to 596,1.09 nohead lt 1 lw 40
set arrow from 597,1.11 to 605,1.11 nohead lt 4 lw 10
set arrow from 606,1.09 to 628,1.09 nohead lt 1 lw 40
set arrow from 629,1.07 to 639,1.07 nohead lt 3 lw 10
set arrow from 640,1.09 to 662,1.09 nohead lt 1 lw 40
set arrow from 663,1.11 to 676,1.11 nohead lt 4 lw 10
set arrow from 677,1.09 to 699,1.09 nohead lt 1 lw 40
set arrow from 700,1.07 to 702,1.07 nohead lt 3 lw 10
set key below
set title "TMHMM posterior probabilities for lcl|CP097583.1_cds_USQ93331.1_1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:702]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_263138/lcl_CP097583.1_cds_USQ93331.1_1.eps"
plot "./TMHMM_263138/lcl_CP097583.1_cds_USQ93331.1_1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
