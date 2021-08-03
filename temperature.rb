# frozen_string_literal: true

print 'Введите температуру и шкалу (C или F): '
string = gets
exit if string.nil? || string.empty?
string.chomp!
temperature, scale = string.split(' ')

abort "#{temperature} недопустимое число!" if temperature !~ /-?\d+/

temperature = temperature.to_f
case scale
when 'C', 'c'
  f = 1.8 * temperature + 32
when 'F', 'f'
  c = (5.0 / 9.0) * (temperature - 32)
else
  abort 'Необходимо задать C или F.'
end

if f.nil?
  puts "#{c} градусов C"
elsif c.nil?
  puts "#{f} градусов F"
end
