set arrow from 1,1.11 to 3542,1.11 nohead lt 4 lw 10
set arrow from 3543,1.09 to 3565,1.09 nohead lt 1 lw 40
set arrow from 3566,1.07 to 3577,1.07 nohead lt 3 lw 10
set arrow from 3578,1.09 to 3600,1.09 nohead lt 1 lw 40
set arrow from 3601,1.11 to 3614,1.11 nohead lt 4 lw 10
set arrow from 3615,1.09 to 3637,1.09 nohead lt 1 lw 40
set arrow from 3638,1.07 to 3657,1.07 nohead lt 3 lw 10
set arrow from 3658,1.09 to 3680,1.09 nohead lt 1 lw 40
set arrow from 3681,1.11 to 3684,1.11 nohead lt 4 lw 10
set arrow from 3685,1.09 to 3707,1.09 nohead lt 1 lw 40
set arrow from 3708,1.07 to 3727,1.07 nohead lt 3 lw 10
set arrow from 3728,1.09 to 3750,1.09 nohead lt 1 lw 40
set arrow from 3751,1.11 to 3769,1.11 nohead lt 4 lw 10
set arrow from 3770,1.09 to 3792,1.09 nohead lt 1 lw 40
set arrow from 3793,1.07 to 3798,1.07 nohead lt 3 lw 10
set arrow from 3799,1.09 to 3821,1.09 nohead lt 1 lw 40
set arrow from 3822,1.11 to 3830,1.11 nohead lt 4 lw 10
set arrow from 3831,1.09 to 3853,1.09 nohead lt 1 lw 40
set arrow from 3854,1.07 to 3872,1.07 nohead lt 3 lw 10
set arrow from 3873,1.09 to 3895,1.09 nohead lt 1 lw 40
set arrow from 3896,1.11 to 3909,1.11 nohead lt 4 lw 10
set arrow from 3910,1.09 to 3932,1.09 nohead lt 1 lw 40
set arrow from 3933,1.07 to 3952,1.07 nohead lt 3 lw 10
set arrow from 3953,1.09 to 3975,1.09 nohead lt 1 lw 40
set arrow from 3976,1.11 to 3989,1.11 nohead lt 4 lw 10
set arrow from 3990,1.09 to 4012,1.09 nohead lt 1 lw 40
set arrow from 4013,1.07 to 4024,1.07 nohead lt 3 lw 10
set arrow from 4025,1.09 to 4047,1.09 nohead lt 1 lw 40
set arrow from 4048,1.11 to 4512,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for lcl|CP097583.1_cds_USQ93604.1_1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:4512]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_263138/lcl_CP097583.1_cds_USQ93604.1_1.eps"
plot "./TMHMM_263138/lcl_CP097583.1_cds_USQ93604.1_1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
