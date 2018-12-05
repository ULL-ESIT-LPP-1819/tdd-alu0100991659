RSpec.describe NutrientesEdu do
  it "has a version number" do
    expect(NutrientesEdu::VERSION).not_to be nil
  end
  
  before :all do
    @alimento1=Alimento.new("mango", 4, 2, 5, 2, 6, 0)
    @alimento2=Alimento.new("pera", 6, 1, 10, 6, 2, 1)
  end
  
  context "Pruebas de comparacion para las etiquetas" do
    it "Prueba para comparable menor" do
      expect(@alimento1 < @alimento2).to eq(true)
    end
    it "Prueba para comparable mayor" do
      expect(@alimento1 > @alimento2).to eq(false)
    end
    it "Prueba para comparable mayor o igual" do
      expect(@alimento1 >= @alimento2).to eq(false)
    end
    it "Prueba para comparable menor o igual" do
      expect(@alimento1 <= @alimento2).to eq(true)
    end
  end
end
      