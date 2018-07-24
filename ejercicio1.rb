def metodo(x,y)
  file = File.open('index.html', 'w')
  file.puts "<p> #{x}</p> <p> #{y}</p>"
  file.close
  return nil
end
puts metodo('kcfnkcjvfnjkvfnvjkf', 'nfjhvkrnvjkf')


def metodo2(x,y,z)
  file = File.open('index.html', 'w')
  file.puts "<p> #{x}</p> <p> #{y}</p>"
  if z != []
    z.each do |z|
    file.puts "<ol><li>#{z}</li></ol>"
    end
  end
  file.close
  return nil
end
puts metodo2('kcfnkcjvfnjkvfnvjkf', 'nfjhvkrnvjkf', [3,4,5])


def metodo3(x,y,z,color)
  file = File.open('index.html', 'w')
  file.puts "<p style =background-color:#{color}> #{x}</p> <p style=background-color:#{color}> #{y}</p>"
  if z != []
    z.each do |z|
    file.puts "<ol><li>#{z}</li></ol>"
    end
  end
  file.close
  return nil
end
puts metodo3('kcfnkcjvfnjkvfnvjkf', 'nfjhvkrnvjkf', [3,4,5], 'green')
