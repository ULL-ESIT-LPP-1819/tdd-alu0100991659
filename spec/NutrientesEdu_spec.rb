RSpec.describe NutrientesEdu do
  it "has a version number" do
    expect(NutrientesEdu::VERSION).not_to be nil
  end
  
  before :all do
    @pistacho = Alimento.new("pistacho", 20, 5, 30, 3, 60, 1)
  end
  
  it "does something useful" do
    expect(true).to eq(true)
  end
  
  context "Elementos básicos del alimento" do
    it "Tiene nombre" do
      expect(@pistacho).to have_attributes(:nombre => "pistacho")
    end
    it "Tiene cantidad de grasas" do
      expect(@pistacho).to have_attributes(:grasas => 20)
    end
    it "Tiene cantidad de grasas saturadas" do
      expect(@pistacho).to have_attributes(:grsat => 5 )
    end
    it "Tiene cantidad de hidratos de carbono" do
      expect(@pistacho).to have_attributes(:carbs => 30)
    end
    it "Tiene cantidad de azucares" do
      expect(@pistacho).to have_attributes(:azucar => 3)
    end
    it "Tiene cantidad de proteinas" do
      expect(@pistacho).to have_attributes(:protein => 60)
    end
    it "Tiene cantidad de sal" do
      expect(@pistacho).to have_attributes(:sal => 1)
    end
    it "Tiene metodo para obtener nombre" do
      expect(@pistacho.nombre).to eq("pistacho")
    end
    it "Tiene metodo para obtener cantidad de grasas" do
      expect(@pistacho.grasas).to eq(20)
    end
    it "Tiene metodo para obtener cantidad de grasas saturadas" do
      expect(@pistacho.grsat).to eq(5)
    end
    it "Tiene metodo para obtener cantidad de carbohidratos" do
      expect(@pistacho.carbs).to eq(30)
    end
    it "Tiene metodo para obtener cantidad de azucares" do
      expect(@pistacho.azucar).to eq(3)
    end
    it "Tiene metodo para obtener la cantidad de sal" do
      expect(@pistacho.sal).to eq(1)
    end
end
end
