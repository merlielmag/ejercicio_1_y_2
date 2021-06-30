#!/usr/bin/env ruby

# Array de ejemplo
array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"]
print "Array: #{array}"
puts "\n\n"

# Pide un número de divisiones
puts "Introduce el número de subdivisiones"
num_subdivisiones = gets.chomp.to_i

# Crea un array vacío con la cantidad de subdivisiones
array_resultado = Array.new(num_subdivisiones) {Array.new(0)}
i = 0

# Itera por la división del tamaño del array de ejemplo / número de subdivisiones
# más el módulo de la misma operación para añadir nil si la división no es exacta
((array.length / num_subdivisiones) + (array.length % num_subdivisiones)).times do
	# Añade para cada subdivisión el ítem del array a la vez que lo elimina para la siguiente iteración
	num_subdivisiones.times do
		array_resultado[i] << array.delete_at(0)
		i = i + 1
	end
	i = 0
end

puts "Resultado:\n"
print array_resultado
puts "\n"
