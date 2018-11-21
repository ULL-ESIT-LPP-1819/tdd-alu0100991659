RSpec.describe Individuo do
  it "has a version number" do
    expect(IMC::VERSION).not_to be nil
    expect(Individuo::VERSION).not_to be nil
  end
  
    before :all do
        @individuo1 = Individuo.new()
      end
      
    context "Pruebas para los individuos" do
        it "El individuo pertenece a la clase individuo" do
            expect(@individuo1.class).to eq(Individuo)
        end
        
        it "El individuo pertence a la jerarquia de IMC" do
            expect(@individuo1.is_a?IMC).to eq(true)
        end
    end
end