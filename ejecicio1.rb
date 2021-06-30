#!/usr/bin/env ruby

# Pide un número a calcular
puts "Introduce un número para calcular su suma factorial\n"
number = gets.chomp.to_i

# Crea un array vacío para guardar los números a sumar
numbers_to_sum = []
i = 1
puts "suma factorial(#{number})"

# Itera number
number.times do

  # Introduce en el array los números a sumar desde 1 hasta el valor de number
  while i <= number do
      numbers_to_sum << i
      i = i + 1
  end
  # Reinicia i para la siguiente iteración
  i = 1

  # Resta 1 a number para la siguiente iteración
  number = number - 1
end

print numbers_to_sum.join(' + ')
puts "\n\n"
puts "Resultado: #{numbers_to_sum.sum}"
