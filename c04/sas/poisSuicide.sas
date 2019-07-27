DATA pois;
    Lower = CDF('Poisson', 5, 11);
    Upper = SDF('Poisson', 16, 11);
    Alpha = Lower + Upper;
PROC PRINT DATA=pois;