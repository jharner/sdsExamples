DATA binomAlpha;
    Lower = CDF('Binomial', 5, 0.5, 20);
    Upper = SDF('Binomial', 14, 0.5, 20);
    Alpha = Lower + Upper;
PROC PRINT DATA=binomAlpha;