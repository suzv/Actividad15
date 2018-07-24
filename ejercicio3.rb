file = File.open('peliculas.txt', 'r')
data = file.readlines
file.close


def contador(x)
  cont = x.map{|ele| ele.split(' ').count}
  puts cont.inject(0) { |sum,e| sum += e}
end
contador(data)



def scanner(filename, word)
  file = File.open(filename, 'r')
  data = file.readlines
  file.close
    data.each do |line|
      puts line.include?(word)
    end
end
scanner('peliculas.txt', 'Galaxias')
