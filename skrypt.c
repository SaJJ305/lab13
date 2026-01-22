#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

if (argc < 2){
    printf("Uzycie %s liczba1 liczba2 liczba3 ... liczban", argv[0]);
    return 1;
}

int n = argc - 1;

double *liczby = (double*)malloc(n * sizeof(double));

liczby[0] = atof(argv[1]);
double min_val = liczby[0];
double max_val = liczby[0];

for (int i = 1; i < n; i++) {
    liczby[i] = atof(argv[i + 1]);
    if (liczby[i] < min_val) min_val = liczby[i];     
    if (liczby[i] > max_val) max_val = liczby[i];
}

if (max_val == min_val) {
   printf("Blad, min = max");
   free(liczby);
   return 0;
}

double range = max_val - min_val;
for (int i = 0; i < n; i++) {
    printf("%.3lf ", (liczby[i] - min_val) / range);
}
printf("\n");

free(liczby);
return 0;
}
