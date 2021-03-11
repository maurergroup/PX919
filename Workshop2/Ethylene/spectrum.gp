set title "Absorption spectrum (Gaussian, FWHM=0.500000 eV)\n20000 Initial conditions, MCH representation"

set xrange [4.000000:12.000000]
set yrange [0.000000:1.000000]
set xlabel 'Energy (eV)'
set ylabel 'Absorption spectrum (normalized)'

set style fill transparent solid 0.6 border
set term pngcairo size 1000,500
set out 'spectrumC2H4.png'

N=43.620493
unset key
N2=20.574919
N3=13.752169
Nexp=958.640355443
set multiplot layout 2,1

 set lmargin at screen 0.2; set rmargin at screen 0.55;
 set bmargin at screen 0.2; set tmargin at screen 0.9
 plot "spectrum_QC.out" u 1:((0+$2)/N) w filledcu notit "Singlet_0" lw 0.5 lc rgbcolor "#FF0000", \
      ""             u 1:((0+$3)/N) w filledcu tit "Singlet_1" lw 0.5 lc rgbcolor "#AD1457", \
      ""             u 1:((0+$4)/N) w filledcu tit "Singlet_2" lw 0.5 lc rgbcolor "#000033", \
      ""             u 1:(($5)/N)   w l        tit "Sum"       lw 3.0 lc rgbcolor "black",\
 "exp.dat" u (1/($1/10)*6.626*6.242*30):($2/Nexp) w l tit "Exp." lw 1.0  lc rgbcolor "grey40",\

 unset ylabel
 unset ytics
 set key top right
 set lmargin at screen 0.55; set rmargin at screen 0.9
 set bmargin at screen 0.2; set tmargin at screen 0.9
 set xtics(5,6,7,8,9,10,11,12)
 plot "spectrum_soloNN.out" u 1:((0+$2)/N2) w filledcu notit "Singlet_0" lw 0.5 lc rgbcolor "#FF0000", \
      ""             u 1:((0+$3)/N2) w filledcu tit "Singlet_1" lw 0.5 lc rgbcolor "#AD1457", \
      ""             u 1:((0+$4)/N2) w filledcu tit "Singlet_2" lw 0.5 lc rgbcolor "#000033", \
      ""             u 1:(($5)/N2)   w l        tit "Sum"       lw 3.0 lc rgbcolor "black",\
  "spectrum_combi.out" u 1:((0+$2)/N3) w l lw 2.5 dt "-" lc rgbcolor "#FF0000" notitle, \
      ""             u 1:((0+$3)/N3) w l lw 2.5 dt "-" lc rgbcolor "#AD1457" notitle, \
      ""             u 1:((0+$4)/N3) w l lw 2.5 dt "-" lc rgbcolor "#000033" notitle, \
      ""             u 1:(($5)/N3)   w l     dt "-"   lw 5.0 lc rgbcolor "black" notitle
unset multiplot
