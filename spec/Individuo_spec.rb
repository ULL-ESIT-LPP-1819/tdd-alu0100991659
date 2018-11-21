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
            expect(@individuo.class).to eq(Individuo)
        end
    end
end