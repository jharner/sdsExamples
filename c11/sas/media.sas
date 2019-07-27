options nocenter nodate nonumber skip=0 ls=80 formdlim=''
  formchar = '|----|+|---+=|-/\<>*';
title; footnote;
data media;
  infile 'media.txt' firstobs = 2;
  input medium $ employees profit;
proc print;
proc glm;
	class medium;
	model profit = medium employees;
run;