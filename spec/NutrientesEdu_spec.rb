RSpec.describe NutrientesEdu do
  it "has a version number" do
    expect(NutrientesEdu::VERSION).not_to be nil
  end
  
  before :all do
    @pistacho = Alimento.new("pistacho", 20, 5, 30, 3)
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
  
end
end
