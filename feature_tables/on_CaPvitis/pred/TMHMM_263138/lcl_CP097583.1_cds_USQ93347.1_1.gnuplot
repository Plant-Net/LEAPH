set arrow from 1,1.11 to 669,1.11 nohead lt 4 lw 10
set arrow from 670,1.09 to 692,1.09 nohead lt 1 lw 40
set arrow from 693,1.07 to 698,1.07 nohead lt 3 lw 10
set arrow from 699,1.09 to 721,1.09 nohead lt 1 lw 40
set arrow from 722,1.11 to 730,1.11 nohead lt 4 lw 10
set arrow from 731,1.09 to 753,1.09 nohead lt 1 lw 40
set arrow from 754,1.07 to 759,1.07 nohead lt 3 lw 10
set arrow from 760,1.09 to 782,1.09 nohead lt 1 lw 40
set arrow from 783,1.11 to 796,1.11 nohead lt 4 lw 10
set arrow from 797,1.09 to 819,1.09 nohead lt 1 lw 40
set arrow from 820,1.07 to 839,1.07 nohead lt 3 lw 10
set arrow from 840,1.09 to 862,1.09 nohead lt 1 lw 40
set arrow from 863,1.11 to 871,1.11 nohead lt 4 lw 10
set arrow from 872,1.09 to 894,1.09 nohead lt 1 lw 40
set arrow from 895,1.07 to 913,1.07 nohead lt 3 lw 10
set arrow from 914,1.09 to 936,1.09 nohead lt 1 lw 40
set arrow from 937,1.11 to 950,1.11 nohead lt 4 lw 10
set arrow from 951,1.09 to 973,1.09 nohead lt 1 lw 40
set arrow from 974,1.07 to 984,1.07 nohead lt 3 lw 10
set arrow from 985,1.09 to 1007,1.09 nohead lt 1 lw 40
set arrow from 1008,1.11 to 1021,1.11 nohead lt 4 lw 10
set arrow from 1022,1.09 to 1044,1.09 nohead lt 1 lw 40
set arrow from 1045,1.07 to 1050,1.07 nohead lt 3 lw 10
set arrow from 1051,1.09 to 1073,1.09 nohead lt 1 lw 40
set arrow from 1074,1.11 to 1087,1.11 nohead lt 4 lw 10
set arrow from 1088,1.09 to 1110,1.09 nohead lt 1 lw 40
set arrow from 1111,1.07 to 1121,1.07 nohead lt 3 lw 10
set arrow from 1122,1.09 to 1144,1.09 nohead lt 1 lw 40
set arrow from 1145,1.11 to 1148,1.11 nohead lt 4 lw 10
set arrow from 1149,1.09 to 1171,1.09 nohead lt 1 lw 40
set arrow from 1172,1.07 to 1183,1.07 nohead lt 3 lw 10
set arrow from 1184,1.09 to 1206,1.09 nohead lt 1 lw 40
set arrow from 1207,1.11 to 1220,1.11 nohead lt 4 lw 10
set arrow from 1221,1.09 to 1243,1.09 nohead lt 1 lw 40
set arrow from 1244,1.07 to 1249,1.07 nohead lt 3 lw 10
set arrow from 1250,1.09 to 1272,1.09 nohead lt 1 lw 40
set arrow from 1273,1.11 to 1275,1.11 nohead lt 4 lw 10
set arrow from 1276,1.09 to 1298,1.09 nohead lt 1 lw 40
set arrow from 1299,1.07 to 1304,1.07 nohead lt 3 lw 10
set arrow from 1305,1.09 to 1327,1.09 nohead lt 1 lw 40
set arrow from 1328,1.11 to 1341,1.11 nohead lt 4 lw 10
set arrow from 1342,1.09 to 1364,1.09 nohead lt 1 lw 40
set arrow from 1365,1.07 to 1441,1.07 nohead lt 3 lw 10
set arrow from 1442,1.09 to 1464,1.09 nohead lt 1 lw 40
set arrow from 1465,1.11 to 1473,1.11 nohead lt 4 lw 10
set arrow from 1474,1.09 to 1496,1.09 nohead lt 1 lw 40
set arrow from 1497,1.07 to 1516,1.07 nohead lt 3 lw 10
set arrow from 1517,1.09 to 1539,1.09 nohead lt 1 lw 40
set arrow from 1540,1.11 to 1548,1.11 nohead lt 4 lw 10
set arrow from 1549,1.09 to 1571,1.09 nohead lt 1 lw 40
set arrow from 1572,1.07 to 1583,1.07 nohead lt 3 lw 10
set arrow from 1584,1.09 to 1606,1.09 nohead lt 1 lw 40
set arrow from 1607,1.11 to 4641,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for lcl|CP097583.1_cds_USQ93347.1_1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:4641]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_263138/lcl_CP097583.1_cds_USQ93347.1_1.eps"
plot "./TMHMM_263138/lcl_CP097583.1_cds_USQ93347.1_1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
