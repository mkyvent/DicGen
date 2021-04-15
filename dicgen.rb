#!/usr/bin/ruby
#encoding utf-8
victima = %w[]
def clear()
	system("clear")
end
def pausa()
	print "ENTER PARA CONTINUAR "; pause = gets.chomp.to_s
end
def comprobar_o_crear(file) 
	until 1 > 10
		clear()
		if File.exist?(file) ## Comprueba si existe el archivo
			puts "#{file} Ya existe (0.0)"; sleep(1) ## Si existe pregunta si modificar o no
			print "Quieres Modificar el archivo #{file}? (y/n):"; mod = gets.chomp.to_s
			if mod == "Y" || "y"
				puts "Modificando !!!"; sleep(1)
				break
			elsif mod == "n" || "N"
				puts "Saliendo de la modificacion (ToT)"; sleep(1)
				exit
			else
				puts "Error #{mod}... Saliendo..."; sleep(1)
			end
		else ## Si el archivo no existe, crea un archivo
			print "Creando...   "
			if File.new(file,"w")
				print "[Ok]\n"; sleep(1)
				break
			else
				print "[Err]\n"; sleep(1)
				exit
			end
		end
	end
end
def antes_del_cuestionario() ##antes de comenzar el cuestionario
	clear()
	puts "  ____________________________________"
	puts " |___________________________[_][-][X]|"
	puts " |        Antes De Continuar!!!       |"
	puts " | 1-No dejar ninguna pregunta vacia  |"
	puts " | 2-No dejar espacios entre palabras |"
	puts " |____________________________________|\n"
	pausa(); clear()
end
############## [EJECUSION DEL PROGRAMA] ###############
clear()
puts "Bienvenido a dicgen 3.0 ruby"
print "Nombre del archivo:"; file = gets.chomp.to_s
antes_del_cuestionario()
print "(?) Nombre de la victima:"; victima[0] = gets.chomp.to_s
print "(?) Primer apellido de la victima:"; victima[1] = gets.chomp.to_s
print "(?) Segundo apellido de la victima:"; victima[2] = gets.chomp.to_s
print "(?) Dia de nacimiento:"; victima[3] = gets.chomp.to_s
print "(?) Mes de nacimiento:"; victima[4] = gets.chomp.to_s
print "(?) Ano de nacimiento:"; victima[5] = gets.chomp.to_s
print "(?) Apodo o sobre nombre:"; victima[6] = gets.chomp.to_s
print "(?) Su edad:"; victima[7] = gets.chomp.to_s
comprobar_o_crear(file)
puts "(*) Iniciando escritura..."; sleep(1)
print "(*) Combinando x2\n"
victima.each do |uno| ## Iniciando la conbinacion x2
	victima.each do |dos|
		text = uno + dos
		File.write(file,"#{text.to_s}\n",mode:"a")
	end
end
victima.each do |uno| ## Iniciando la conbinacion x2 primera letra mayuscula
	victima.each do |dos|
		text = uno.capitalize.to_s + dos
		File.write(file,"#{text.to_s}\n",mode:"a")
	end
end
victima.each do |uno| ## Iniciando la conbinacion x2 primeras letra mayuscula
	victima.each do |dos|
		text = uno.capitalize.to_s + dos.capitalize.to_s
		File.write(file,"#{text.to_s}\n",mode:"a")
	end
end
victima.each do |uno| ## Iniciando la conbinacion x2 mayusculas
	victima.each do |dos|
		text = uno.upcase.to_s + dos.upcase.to_s
		File.write(file,"#{text.to_s}\n",mode:"a")
	end
end
print "(*) Combinando x3\n"
victima.each do |un| ## Iniciando combinacion x3
	victima.each do |ds|
		victima.each do |trs|
			text = un + ds + trs
			File.write(file,"#{text.to_s}\n",mode:"a")
		end
	end
end
victima.each do |un| ## Iniciando combinacion x3 primera letra mayusculas
	victima.each do |ds|
		victima.each do |trs|
			text = un.capitalize.to_s + ds + trs
			File.write(file,"#{text.to_s}\n",mode:"a")
		end
	end
end
victima.each do |un| ## Iniciando combinacion x3 primeras letra mayusculas
	victima.each do |ds|
		victima.each do |trs|
			text = un.capitalize.to_s + ds.capitalize.to_s + trs.capitalize.to_s
			File.write(file,"#{text.to_s}\n",mode:"a")
		end
	end
end
victima.each do |un| ## Iniciando combinacion x3 todas mayusculas
	victima.each do |ds|
		victima.each do |trs|
			text = un.upcase.to_s + ds.upcase.to_s + trs.upcase.to_s
			File.write(file,"#{text.to_s}\n",mode:"a")
		end
	end
end
puts "Finalizado (*)"