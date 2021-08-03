% Método de Gauss Seidel
% Este algoritmo funciona sólo con SEL que convergen,
% donde:
%
% matriz es la matriz de coeficientes 
% b es el vector de constantes 
% x0 es el valor inicial de la variables
% user_error es el error o tolerancia 
% max_iter es el límite de iteraciones
%
function gauss_seidel(matriz, b, x0, user_error, max_iter)

  % Se obtiene el tamaño de la matriz
  n = length(b);

  % Se inicializan las variables con el valor ingresado
  x = x0;

  % Se inicializa la variable que contiene la suma del método

  % Se itera hasta alcanzar el máximo de iteraciones
  for i = 1 : max_iter

    % Se iterna sobre toda la matriz
    for j = 1 : n

      % Se realiza la sumatoria propuesta por el método Gauss_Seidel

     % for k = 1 : j - 1

     %   current_sum = current_sum + matriz(j, k) * x(j);

     % end

     % for k = j + 1 : n
     %   
     %   current_sum = current_sum + matriz(j, k) * x0(j);
     % 
     % end

     % x(j) = (b(j) - current_sum) / matriz(j, j);

     % % Se le asigna 0 a la variable para la próxima iteración

     % current_sum = 0;
          new_values_sum = matriz(j, 1 : j - 1) * x(1 : j - 1);

          % compute the sum usjng the prevjous step values
          old_values_sum = matriz(j, j + 1 : n) * x0(j + 1 : n);

          x(j) = b(j) - (old_values_sum + new_values_sum);
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
