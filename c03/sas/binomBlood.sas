data binomBlood;
do i = 0 to 4;
    y = i;
    pdf_y = pdf('Binomial', y, 0.4, 4);
    output;
end;
proc print data=binomBlood;
	var y pdf_y;