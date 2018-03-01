set samples 1000
set xrange [0.000000:1.000000]
set autoscale y
set size 0.78, 1.0
set nogrid
set ylabel 'Counts'
set xlabel 'Confidence Measure'
set title  'Confidence scores for ../exp/TIMIT_MLP_mfcc/decoding_test/score_3/ctm_39phn.filt'
plot '../exp/TIMIT_MLP_mfcc/decoding_test/score_3/ctm_39phn.filt.hist.dat' using 1:2 '%f%f' title 'All Conf.' with lines, \
     '../exp/TIMIT_MLP_mfcc/decoding_test/score_3/ctm_39phn.filt.hist.dat' using 1:2 '%f%*s%f' title 'Correct Conf.' with lines, \
     '../exp/TIMIT_MLP_mfcc/decoding_test/score_3/ctm_39phn.filt.hist.dat' using 1:2 '%f%*s%*s%f' title 'Incorrect Conf.' with lines
set size 1.0, 1.0
