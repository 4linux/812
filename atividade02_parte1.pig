A = LOAD '/user/maria_dev/flightdelays_clean/' USING PigStorage(',');
B = GROUP A ALL;
C = FOREACH B GENERATE COUNT(A);
STORE C INTO '/user/maria_dev/cleaned_total';
