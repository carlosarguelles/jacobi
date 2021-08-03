% Método de Jacobi
% Este algoritmo funciona sólo con SEL que convergen,
% donde:
%
% matriz es la matriz de coeficientes 
% b es el vector de constantes 
% x0 es el valor inicial de la variables
% user_error es el error o tolerancia 
% max_iter es el límite de iteraciones
%
function jacobi(matriz, b, x0, user_error, max_iter)

  % Se obtiene el tamaño de la matriz
  n = length(b);

  % Se inicializan las variables con el valor ingresado
  x = x0;

  % Se itera hasta alcanzar el máximo de iteraciones
  for i = 1 : max_iter

    % Se itera sobre toda la matriz
    for j = 1 : n

      % Se reemplazan los valores iniciales o anteriores x0 en la matriz
      jacobi_sum = matriz(j, :) * x0(:);
      aux_x = matriz(j, j) * x0(j);

      % Se aplica la definición del Método de Jacobi
      x(j) = b(j) - (jacobi_sum - aux_x);
      x(j) = x(j) / matriz(j, j);

    end

    % Se verifica el error aproximado
    if norm(x - x0) < user_error

      % De ser así, se suspende el ciclo
      break;

    end

    % Se muestran los resultados de cada iteración
    print_row(i, x0, x, (x - x0));

    % Se actualiza el valor de x0 para iteración i + 1
    x0 = x;

  end

end
