require "lib/racional.rb"

describe Fraccion do 
	before :each do
		@f1 = Fraccion.new(1,2)
#<<<<<<< HEAD
		@f22 = Fraccion.new(2,3)
		@f2 = Fraccion.new(25,5)
		@f3 = Fraccion.new(5,15)
		@f4 = Fraccion.new(5,15)
		@f5 = Fraccion.new(1,3)
		@f6 = Fraccion.new(7,5)
		@f7 = Fraccion.new(-1,2)
	end
	
	describe "# Almacenamiento de valores" do
		it "Se almacena correctamente el numerador NUM" do
			@f1.n.should eq(1)
		end
		it "Se almacena correctamente el demoninador DEN" do
			@f1.d.should eq(2)
		end
	end
#======
	describe "#Devolver numerador y denomiador"do
		it "Se devuelve correctamente el numerador" do
			@f1.num.should eq(1)
		end
		it "Se devuelve correctamente el denominador" do 
			@f1.denom.should eq(2)
		end
	end
	describe "# Metodo coma flotante" do
		it "Se muestra correctamente la division" do
			@f1.float.should eq("0.5")
		end
	end
	describe "#abs -  Valor absoluto" do
		it "Se realiza correctamente el abs"do
			@f7.fabs.should eq("1 / 2")
#>>>>>>> origin/test_alderete
		end
	end

	describe "# Minima expresion: " do
		it "La Fraccion queda reducida en su forma Minima" do
			f2 = Fraccion.new(4,8)
			f2.simply
			f2.n.should eq(1)
			f2.d.should eq(2)
		end
	end

	describe "# Operaciones aritmeticas" do
		it "la SUMA se realiza correctamente" do
			f =  @f2 + @f3
			f.n.should eq(16)
			f.d.should eq(3)
		end
		it "la RESTA se realiza correctamente" do
			f =  @f2 - @f3
			f.n.should eq(14)
			f.d.should eq(3)
		end
		it "el PRODUCTO se realiza correctamente" do
			f =  @f2 * @f3
			f.n.should eq(5)
			f.d.should eq(3)
		end
		it "el COCIENTE se realiza correctamente" do
			f =  @f2 / @f3
			f.n.should eq(15)
			f.d.should eq(1)
		end
	end

	describe "# Operaciones de comparacion" do
		it "las Fracciones son iguales" do
			check = false
			if(@f4 == @f3)
				check = true
			end
			check.should eq(true)
		end
		it "Fraccion1 < Fraccion2" do
			check = false
			if(@f1 < @f3)
				check = true
			end
			check.should eq(false)
		end
		it "Fraccion1 > Fraccion2" do
			check = false
			if(@f1 > @f3)
				check = true
			end
			check.should eq(true)
		end
		it "Fraccion1 <= Fraccion2" do
			check = false
			if(@f1 <= @f3)
				check = true
			end
			check.should eq(false)
		end
		it "Fraccion1 >= Fraccion2" do
			check = false
			if(@f4 >= @f3)
				check = true
			end
			check.should eq(true)
		end
	end

	describe "# De impropia a mixta" do
		it "f = k+f'" do
			result = @f6.imp_to_mix
			result.should eq("1 + 2/5")
		end
	end

	describe "# Reciproco de una Fraccion" do
		it "calculamos el Reciproco de una Fraccion" do
			f2 = @f6.recip
			f2.n.should eq(5)
			f2.d.should eq(7)
		end
	end
	describe "#Fraccion opuesta" do
		it "fraccion opuesta correcta" do
			f=@f1.op
			f.n.should eq(-1)
			f.d.should eq(2)
		end
	end
	describe "#Espectativa conjunto de operaciones(Modificacion en clase)" do
		it "Igualacion de producto correctamente" do
			check=false
			if((@f2*@f3)==(@f2*@f3))
				check = true
			end
			check.should eq(true)
		end
		it "Producto con valor absoluto" do 
			f=(@f7*@f1).fabs
			f.should eq("1 / 4")		
		end
		it "Funcion modulo" do
			if((@f1% @f22) != 0)
				f=(@f1.op*@f22).fabs
			end
			f.should eq("1 / 3")
			
		end
	end

end
