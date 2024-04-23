set arrow from 1,1.11 to 1321,1.11 nohead lt 4 lw 10
set arrow from 1322,1.09 to 1344,1.09 nohead lt 1 lw 40
set arrow from 1345,1.07 to 1355,1.07 nohead lt 3 lw 10
set arrow from 1356,1.09 to 1378,1.09 nohead lt 1 lw 40
set arrow from 1379,1.11 to 1387,1.11 nohead lt 4 lw 10
set arrow from 1388,1.09 to 1410,1.09 nohead lt 1 lw 40
set arrow from 1411,1.07 to 1416,1.07 nohead lt 3 lw 10
set arrow from 1417,1.09 to 1439,1.09 nohead lt 1 lw 40
set arrow from 1440,1.11 to 1453,1.11 nohead lt 4 lw 10
set arrow from 1454,1.09 to 1476,1.09 nohead lt 1 lw 40
set arrow from 1477,1.07 to 1482,1.07 nohead lt 3 lw 10
set arrow from 1483,1.09 to 1505,1.09 nohead lt 1 lw 40
set arrow from 1506,1.11 to 1514,1.11 nohead lt 4 lw 10
set arrow from 1515,1.09 to 1537,1.09 nohead lt 1 lw 40
set arrow from 1538,1.07 to 1543,1.07 nohead lt 3 lw 10
set arrow from 1544,1.09 to 1566,1.09 nohead lt 1 lw 40
set arrow from 1567,1.11 to 1569,1.11 nohead lt 4 lw 10
set arrow from 1570,1.09 to 1592,1.09 nohead lt 1 lw 40
set arrow from 1593,1.07 to 1598,1.07 nohead lt 3 lw 10
set arrow from 1599,1.09 to 1621,1.09 nohead lt 1 lw 40
set arrow from 1622,1.11 to 1625,1.11 nohead lt 4 lw 10
set arrow from 1626,1.09 to 1648,1.09 nohead lt 1 lw 40
set arrow from 1649,1.07 to 1668,1.07 nohead lt 3 lw 10
set arrow from 1669,1.09 to 1691,1.09 nohead lt 1 lw 40
set arrow from 1692,1.11 to 1705,1.11 nohead lt 4 lw 10
set arrow from 1706,1.09 to 1728,1.09 nohead lt 1 lw 40
set arrow from 1729,1.07 to 1734,1.07 nohead lt 3 lw 10
set arrow from 1735,1.09 to 1757,1.09 nohead lt 1 lw 40
set arrow from 1758,1.11 to 1761,1.11 nohead lt 4 lw 10
set arrow from 1762,1.09 to 1784,1.09 nohead lt 1 lw 40
set arrow from 1785,1.07 to 1790,1.07 nohead lt 3 lw 10
set arrow from 1791,1.09 to 1813,1.09 nohead lt 1 lw 40
set arrow from 1814,1.11 to 1817,1.11 nohead lt 4 lw 10
set arrow from 1818,1.09 to 1840,1.09 nohead lt 1 lw 40
set arrow from 1841,1.07 to 1852,1.07 nohead lt 3 lw 10
set arrow from 1853,1.09 to 1875,1.09 nohead lt 1 lw 40
set arrow from 1876,1.11 to 1889,1.11 nohead lt 4 lw 10
set arrow from 1890,1.09 to 1912,1.09 nohead lt 1 lw 40
set arrow from 1913,1.07 to 1998,1.07 nohead lt 3 lw 10
set arrow from 1999,1.09 to 2021,1.09 nohead lt 1 lw 40
set arrow from 2022,1.11 to 2022,1.11 nohead lt 4 lw 10
set key below
set title "TMHMM posterior probabilities for lcl|CP097583.1_cds_USQ93437.1_1"
set yrange [0:1.2]
set size 2., 1.4
#set xlabel "position"
set ylabel "probability"
set xrange [1:2022]
# Make the ps plot
set term postscript eps color solid "Helvetica" 30
set output "./TMHMM_263138/lcl_CP097583.1_cds_USQ93437.1_1.eps"
plot "./TMHMM_263138/lcl_CP097583.1_cds_USQ93437.1_1.plp" using 1:4 title "transmembrane" with impulses lt 1 lw 2, \
"" using 1:3 title "inside" with line lt 3 lw 2, \
"" using 1:5 title "outside" with line lt 4 lw 2
exit
