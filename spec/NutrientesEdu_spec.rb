RSpec.describe NutrientesEdu do
  it "has a version number" do
    expect(NutrientesEdu::VERSION).not_to be nil
  end
  
  before :all do
    @pistacho = Alimento.new("pistacho")
  end
  
  it "does something useful" do
    expect(true).to eq(true)
  end
  
  context "Elementos básicos del alimento" do
    it "Tiene nombre" do
      expect(@pistacho).to have_attributes(:nombre => "pistacho")
    end
end
end
