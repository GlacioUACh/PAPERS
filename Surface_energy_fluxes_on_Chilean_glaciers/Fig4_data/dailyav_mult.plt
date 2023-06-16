#!-usr-bin-gnuplot
#
# Demonstration of a common use scenario of the multiplot environment.
#
# AUTHOR: Hagen Wierstorf
#

reset

# wxt terminal
#set terminal wxt size 900,600 enhanced font 'Helvetica,12' persist
# png
set terminal pngcairo size 900,600 enhanced font 'Verdana,10'
set output 'multiplot1.png'
# svg
#set terminal svg size 350,262 fname 'Verdana, Helvetica, Arial, sans-serif' \
#fsize '10'
#set output 'multiplot1.svg'

# color definitions
set style line  1 lc rgb '#0060ad' pt 5 ps 0.2 lt 1 lw 2    # blue


### Start multiplot (2x2 layout)
set multiplot layout 2,3 rowsfirst
#set key at screen 0.8, 0.10 center vertical 
# --- GRAPH a
set key off
set label 1 'a' at graph 0.05,0.95 font 'Helvetica,14'
set datafile separator ","
set xrange [1:24]
#set yrange [0:1300]
set xlabel "Hour"
set ylabel "Temperature [°C]"
#set title "Net Shortwave Radiation"
#set key at 1.0,1.0
#set key top left font 'Helvetica,7'
set grid
plot 'BELLO_PATERSON_DAILYAV.csv' u 1:14 w l lw 1.5 title 'Bello', \
'PIRAMIDE_PATERSON_DAILYAV.csv' u 1:14 w l lw 1.5 title 'Piramide', \
'SF_PATERSON_DAILYAV.csv' u 1:14 w l lw 1.5 title 'San Francisco', \
'MOCHO_PATERSON_DAILYAV.csv' u 1:14 w l lw 1.5 title 'Mocho', \
'EXPLORADORES_PATERSON_DAILYAV.csv' u 1:14 w l lw 1.5 title 'Exploradores', \
'TYNDALL_2016_PATERSON_DAILYAV.csv' u 1:14 w l lw 1.5 title 'Tyndall'
# --- GRAPH b
set label 1 'b' at graph 0.05,0.95 font 'Helvetica,14'
set key off
#set key font 'Helvetica,10'
#set key horiz

#set key outside maxcols 3 maxrows 2
#set yrange [20:65]
#set tics font "Helvetica,20"
set xlabel "Hour"
set ylabel "Relative humidity [%]"
#set title "Net Longwave Radiation"
#set key top left font 'Helvetica,7'
set grid
plot 'BELLO_PATERSON_DAILYAV.csv' u 1:16 w l lw 1.5 title 'Bello', \
'PIRAMIDE_PATERSON_DAILYAV.csv' u 1:16 w l lw 1.5 title 'Piramide', \
'SF_PATERSON_DAILYAV.csv' u 1:16 w l lw 1.5 title 'San Francisco', \
'MOCHO_PATERSON_DAILYAV.csv' u 1:16 w l lw 1.5 title 'Mocho', \
'EXPLORADORES_PATERSON_DAILYAV.csv' u 1:16 w l lw 1.5 title 'Exploradores', \
'TYNDALL_2016_PATERSON_DAILYAV.csv' u 1:16 w l lw 1.5 title 'Tyndall'
# --- GRAPH c
set key off
set label 1 'c' at graph 0.05,0.95 font 'Helvetica,14'
set autoscale y
#set yrange [150:600]
#set tics font "Helvetica,20"
set xlabel "Hour"
set ylabel "Vapour pressure [Pa]"
#set title "Latent Heat Flux"
#set key top left font 'Helvetica,7'
set grid
plot 'BELLO_PATERSON_DAILYAV.csv' u 1:20 w l lw 1.5 title 'Bello', \
'PIRAMIDE_PATERSON_DAILYAV.csv' u 1:20 w l lw 1.5 title 'Piramide', \
'SF_PATERSON_DAILYAV.csv' u 1:20 w l lw 1.5 title 'San Francisco', \
'MOCHO_PATERSON_DAILYAV.csv' u 1:20 w l lw 1.5 title 'Mocho', \
'EXPLORADORES_PATERSON_DAILYAV.csv' u 1:20 w l lw 1.5 title 'Exploradores', \
'TYNDALL_2016_PATERSON_DAILYAV.csv' u 1:20 w l lw 1.5 title 'Tyndall'

# --- GRAPH d

set key off
set label 1 'd' at graph 0.05,0.95 font 'Helvetica,14'
set autoscale y
#set yrange [2:8]
#set tics font "Helvetica,20"
set xlabel "Hour"
set ylabel "Wind speed [m/s]"
#set title "Sensible Heat Flux"
#set key bottom left font 'Helvetica,7'

set grid
plot 'BELLO_PATERSON_DAILYAV.csv' u 1:18 w l lw 1.5 title 'Bello', \
'PIRAMIDE_PATERSON_DAILYAV.csv' u 1:18 w l lw 1.5 title 'Piramide', \
'SF_PATERSON_DAILYAV.csv' u 1:18 w l lw 1.5 title 'San Francisco', \
'MOCHO_PATERSON_DAILYAV.csv' u 1:18 w l lw 1.5 title 'Mocho', \
'EXPLORADORES_PATERSON_DAILYAV.csv' u 1:18 w l lw 1.5 title 'Exploradores', \
'TYNDALL_2016_PATERSON_DAILYAV.csv' u 1:18 w l lw 1.5 title 'Tyndall'

# --- GRAPH e
set key off
set label 1 'e' at graph 0.05,0.95 font 'Helvetica,14'
set autoscale y
#set yrange [150:600]
#set tics font "Helvetica,20"
set xlabel "Hour"
set ylabel "Incoming lonwgave radiation [W/m^2]"
#set title "Latent Heat Flux"
#set key top left font 'Helvetica,7'
set grid
plot 'BELLO_PATERSON_DAILYAV.csv' u 1:4 w l lw 1.5 title 'Bello', \
'PIRAMIDE_PATERSON_DAILYAV.csv' u 1:4 w l lw 1.5 title 'Piramide', \
'SF_PATERSON_DAILYAV.csv' u 1:4 w l lw 1.5 title 'San Francisco', \
'MOCHO_PATERSON_DAILYAV.csv' u 1:4 w l lw 1.5 title 'Mocho', \
'EXPLORADORES_PATERSON_DAILYAV.csv' u 1:4 w l lw 1.5 title 'Exploradores', \
'TYNDALL_2016_PATERSON_DAILYAV.csv' u 1:4 w l lw 1.5 title 'Tyndall'
# --- GRAPH f
set key off
set label 1 'f' at graph 0.05,0.95 font 'Helvetica,14'
set autoscale y
#set yrange [150:600]
#set tics font "Helvetica,20"
set xlabel "Hour"
set ylabel "Emited longwave radiation [W/m^2]"
#set title "Latent Heat Flux"
#set key top left font 'Helvetica,7'
set grid
plot 'BELLO_PATERSON_DAILYAV.csv' u 1:6 w l lw 1.5 title 'Bello', \
'PIRAMIDE_PATERSON_DAILYAV.csv' u 1:6 w l lw 1.5 title 'Piramide', \
'SF_PATERSON_DAILYAV.csv' u 1:6 w l lw 1.5 title 'San Francisco', \
'MOCHO_PATERSON_DAILYAV.csv' u 1:6 w l lw 1.5 title 'Mocho', \
'EXPLORADORES_PATERSON_DAILYAV.csv' u 1:6 w l lw 1.5 title 'Exploradores', \
'TYNDALL_2016_PATERSON_DAILYAV.csv' u 1:6 w l lw 1.5 title 'Tyndall'

unset multiplot
### End multiplot
