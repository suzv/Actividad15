file = File.open('products.csv', 'r')
data = file.readlines
file.close
 require 'csv'


    puts '           MENU         '
    puts '1.conocer la cantidad de productos existentes'
    puts '2.stock total (suma en las bodegas) de producto'
    puts '3.muestra los productos no registrados en cada bodega'
    puts '4.conocer los productos con una existencia total menor a un valor'
    puts '5.registrar un nuevo producto con su respectivo stock en cada bodega'

option = gets.chomp.to_i
  while option != 6
    case option
    when 1

      puts '1-a) Mostrar la existencia por productos.'
      puts '2-b) Mostrar la existencia total por tienda.'
      puts '3-c) Mostrar la existencia total en todas las tiendas.'
      puts '4-d) Volver al menú principal.'
      option2 = gets.chomp.to_i
       while option2 != 4
         case option2
            when 1
                CSV.foreach("products.csv",) do |row|
                  puts "producto: " + row[0]
                  suma = row[1].to_i + row[2].to_i + row[3].to_i + row[4].to_i + row[5].to_i
                  puts "stock total en distinas tiendas: "+ suma.to_s
                end

            when 2
                csv = CSV.read('products.csv', headers: false)
                sum0, sum1, sum2 = 0,0,0
                csv.each do |row|
                  sum0 += row[1].to_i
                  sum1 += row[2].to_i
                  sum2 += row[3].to_i
                end
                puts 'la existencia total en todas la tienda 1 es: ' + sum0.to_s
                puts 'la existencia total en todas la tienda 2 es: ' + sum1.to_s
                puts 'la existencia total en todas la tienda 3 es: ' + sum2.to_s

            when 3
                csv = CSV.read('products.csv', headers: false)
                sum = 0
                csv.each do |row|
                  sum += row[1].to_i + row[2].to_i + row[3].to_i
                end
                puts 'la existencia total en todas las tiendas es: '+ sum.to_s
              else
                puts 'ingresa una opcion valida'
              end
              puts '1-a) Mostrar la existencia por productos.'
              puts '2-b) Mostrar la existencia total por tienda.'
              puts '3-c) Mostrar la existencia total en todas las tiendas.'
              puts '4-d) Volver al menú principal.'
              option2 = gets.chomp.to_i
            end


     when 2
       puts 'indique de que producto desea saber el stock (Producto1, Producto2, Producto3, Producto8 o Producto12)'
       producto = gets.chomp
         if producto == 'Producto1'
           csv = CSV.read('products.csv', headers: false)
           sum0 = 0
           y = csv[0]
           sum0 = y.inject(0){ |sem,u| sem + u.to_i}
           puts 'el total del Producto1 es: ' + sum0.to_s
         end
         if producto == 'Producto2'
           csv = CSV.read('products.csv', headers: false)
           sum0 = 0
           y = csv[1]
           sum0 = y.inject(0){ |sem,u| sem + u.to_i}
           puts 'el total del Producto2 es: ' + sum0.to_s
         end
         if producto == 'Producto3'
           csv = CSV.read('products.csv', headers: false)
           sum0 = 0
           y = csv[2]
           sum0 = y.inject(0){ |sem,u| sem + u.to_i}
           puts 'el total del Producto3 es: ' + sum0.to_s
         end
         if producto == 'Producto8'
           csv = CSV.read('products.csv', headers: false)
           sum0 = 0
           y = csv[3]
           sum0 = y.inject(0){ |sem,u| sem + u.to_i}
           puts 'el total del Producto8 es: ' + sum0.to_s
         end
         if producto == 'Producto12'
           csv = CSV.read('products.csv', headers: false)
           sum0 = 0
           y = csv[4]
           sum0 = y.inject(0){ |sem,u| sem + u.to_i}
           puts 'el total del Producto12 es: ' + sum0.to_s
         end


    when 3
      csv = CSV.read('products.csv', headers: false)
      csv.each do |row|
        puts 'en bodega 1 no hay: ' + row[0] if row[1] == " NR"
        puts 'en bodega 2 no hay: ' + row[0] if row[2] == " NR"
        puts 'en bodega 3 no hay: ' + row[0] if row[3] == " NR"
      end

   when 4
     puts 'ingresa un valor'
     valor = gets.chomp.to_i
     csv = CSV.read('products.csv', headers: false)
     sum = 0
     csv.each do |row|
       sum = row[1].to_i + row[2].to_i + row[3].to_i
       puts row[0] + '<- el total de stock es menor o igual al valor' if sum <= valor
     end

   when 5
     


    else
      puts 'ingresa un número de opción valido'
    end
    puts '           MENU         '

    option = gets.chomp.to_i
end
