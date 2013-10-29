require 'racional.rb'

puts "=================================="
puts "= 1. Sumar Fraciones             ="
puts "= 2. Restar Fraciones            ="
puts "= 3. Multiplicar Fraciones       ="
puts "= 4. Dividir Fraciones           ="
puts "= 5. Impropia a Mixta            ="
puts "= 6. Mostrar Reciprico           ="
puts "= 7. Mostrar en Flotante         ="
puts "= 8. Mostrar en Valor Absoluto   ="
puts "= 9. Comparar dos Fraciones      ="
puts "=================================="

print "- Introduzca una opcion: "
orden = $stdin.gets.chomp

if(orden.to_i > 0 && orden.to_i < 5 || orden.to_i == 9)
	print "Introduzca Fraccion A (numerador): "
	a_num = $stdin.gets.chomp
	print "Introduzca Fraccion A (denominador): "
	a_den = $stdin.gets.chomp
	print "Introduzca Fraccion B (numerador): "
	b_num = $stdin.gets.chomp
	print "Introduzca Fraccion B (denominador): "
	b_den = $stdin.gets.chomp
	A = Fraccion.new(a_num,a_den)
	B = Fraccion.new(b_num,b_den)
	if(orden.to_i == 1)
		puts "#{A} + #{B} = #{A+B}"
	end
	if(orden.to_i == 2)
		puts "#{A} - #{B} = #{A-B}"
	end
	if(orden.to_i == 3)
		puts "#{A} x #{B} = #{A*B}"
	end
	if(orden.to_i == 4)
		puts "#{A} / #{B} = #{A/B}"
	end
	if(orden.to_i == 9)
		if(A == B)
			puts "#{A} y #{B} son iguales"
		elsif (A > B)
			puts "#{A} es MAYOR que #{B}"
		elsif (A < B)
			puts "#{A} es MENOR que #{B}"
		end
	end
end
if(orden.to_i > 4 && orden.to_i < 9)
	print "Introduzca Fraccion (numerador): "
	a_num = $stdin.gets.chomp
	print "Introduzca Fraccion (denominador): "
	a_den = $stdin.gets.chomp
	A = Fraccion.new(a_num,a_den)
	if(orden.to_i == 5)
		R = A.imp_to_mix
		puts "#{A} -> #{R}"
	end
	if(orden.to_i == 6)
		R = A.recip
		puts "#{A} -> #{R}"
	end
	if(orden.to_i == 7)
		R = A.float
		puts "#{A} -> #{R}"
	end
	if(orden.to_i == 8)
		R = A.fabs
		puts "#{A} -> #{R}"
	end
end