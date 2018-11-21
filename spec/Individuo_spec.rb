require "NutrientesEdu/Lista"

RSpec.describe Individuo do
  it "has a version number" do
    expect(IMC::VERSION).not_to be nil
    expect(Individuo::VERSION).not_to be nil
  end
  
    before :all do
        @individuo1 = Individuos.new("Peter", 1, 1, 150, 1.60, 13, 1)
        @individuo2 = Individuos.new("Marta", 1, 1, 20, 1.60, 50, 0)
        @individuo3 = Individuos.new("Ragnar", 1, 1, 80, 1.90, 39, 1)
        @individuo4 = Individuos.new("Gonzalo", 1, 1, 200, 1.90, 89, 1)
        @individuo5 = Individuos.new("Diana", 1, 1, 500, 1.50, 30, 0)
      end
      
    context "Pruebas para los individuos" do
        it "El individuo pertenece a la clase individuo" do
            expect(@individuo2.class).to eq(Individuos)
        end
        
        it "El individuo pertenece a la jerarquia de clases" do
            expect(@individuo2.class.superclass).to eq(IMC)
        end
        
        it "Prueba 1 del tipo " do
            expect(@individuo2.is_a?BasicObject).to eq(true)
        end
        
        it "Prueba 2 del tipo " do
            expect(@individuo2.is_a?Object).to eq(true)
        end
        
        it "Prueba 3 del tipo " do
            expect(@individuo2.is_a?IMC).to eq(true)
        end
        
        it "Prueba 4 del tipo " do
            expect(@individuo2.is_a?Individuos).to eq(true)
        end
        
        it "Prueba para la lista" do
          @lista = Lista.new()
          @lista.push_head(@individuo1)
          @lista.push_head(@individuo2)
          @lista.push_head(@individuo3)
          @lista.push_head(@individuo4)
          @lista.push_head(@individuo5)
          
          expect(@lista.head.value.nombre).to eq("Diana")
        end
        
        it "Clasifica correctamente" do
          @lista2 = Lista.new()
          @lista2.push_head(@individuo1)
          @lista2.push_head(@individuo2)
          @lista2.push_head(@individuo3)
          @lista2.push_head(@individuo4)
          @lista2.push_head(@individuo5)
          
          @lista2.each do
            |i|
            if i.nombre == "Diana"
              expect(i.clas_imc).to eq("Obeso")
            end
          end
        end
    end
end