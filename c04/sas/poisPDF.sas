DATA pois_den;
DO y = 0 to 13;
   y = i;
   P_y = PDF('Poisson', i, 3);
END;
PROC PRINT DATA=pois_den;