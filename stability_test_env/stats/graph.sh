#!/usr/bin/gnuplot -persist

reset
set xdata time
set timefmt "%d-%m %H:%M:%S"
set format x "%H:%M"
set yrange [0:1024]
set grid
set title "dstat mem usage"
set xlabel "time"
set ylabel "total-mem-usage"
plot "stat.txt" using 1:9 title "used" with lines, "stat.txt" using 1:10 title "buff" with lines, "stat.txt" using 1:11 title "cach" with lines,"stat.txt" using 1:12 title "free" with lines 
set term png size 1920,1080
set output "stat.png"
replot