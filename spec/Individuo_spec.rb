RSpec.describe Individuo do
  it "has a version number" do
    expect(IMC::VERSION).not_to be nil
    expect(Individuo::VERSION).not_to be nil
  end
  
    before :all do
        @individuo2 = Individuos.new("Peter", 1, 1, 150, 160, 13, 1)
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
        
    end
end