
function print_row(i, x, xn, err)
  format_spec = '%u\t%s\t%s\t%s\n';
  array_format = '%.10f\t';
  if i == 1
    head_spec='No.\tan\t\tbn\t\tcn\t\tdn\t\tan+1\t\tbn+1\t\tcn+1\t\t+dn+1\t\tEa\t\tEb\t\tEc\t\tEd\n';
    fprintf(head_spec);
  end
  fprintf(format_spec, i, num2str(x, array_format), ...
  num2str(xn, array_format), num2str(err, array_format));
end
