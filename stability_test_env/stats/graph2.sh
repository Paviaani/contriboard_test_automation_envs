#!/usr/bin/gnuplot -persist

reset
set xdata time
set timefmt "%d-%m %H:%M:%S"
set format x "%H:%M"
set yrange [0:100]
set grid
set title "dstat cpu usage"
set xlabel "time"
set ylabel "total-cpu-usage"
plot "stat.txt" using 1:3 title "usr" with lines, "stat.txt" using 1:4 title "sys" with lines, "stat.txt" using 1:5 title "idle" with lines,"stat.txt" using 1:6 title "wait" with lines 
set term png size 1920,1080
set output "cpustats.png"
replot