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
    it "Prueba para comparable igual" do
      expect(@alimento1 == @alimento2).to eq(false)
    end
    it "Prueba para comparable between" do
      alimentoaux=Alimento.new("pera", 6, 1, 10, 6, 1, 1)
      expect(alimentoaux.between?(@alimento1,@alimento2)).to eq(true)
    end
  end
end

RSpec.describe Individuos do
  it "has a version number" do
    expect(Individuos::VERSION).not_to be nil
  end
  
  before :all do
    @individuo1 = Individuos.new("Marta", 1, 1, 20, 1.60, 50, 0)
    @individuo2 = Individuos.new("Peter", 1, 1, 150, 1.60, 13, 1)
  end
  
  context "Pruebas de comparación para los Individuos (Por IMC)" do
    it "Prueba para comparable menor" do
      expect(@individuo1 < @individuo2).to eq(true)
    end
    it "Prueba para comparable mayor" do
      expect(@individuo1 > @individuo2).to eq(false)
    end
    it "Prueba para comparable mayor o igual" do
      expect(@individuo1 >= @individuo2).to eq(false)
    end
    it "Prueba para comparable menor o igual" do
      expect(@individuo1 <= @individuo2).to eq(true)
    end
    it "Prueba para comparable igual" do
      expect(@individuo1 == @individuo2).to eq(false)
    end
    it "Prueba para comparable between" do
      individuoaux = Individuos.new("John", 1, 1, 50, 1.60, 25, 0)
      expect(individuoaux.between?(@individuo1,@individuo2)).to eq(true)
    end
    
  end
end
      
RSpec.describe Lista do
  it "has a version number" do
    expect(Lista::VERSION).not_to be nil
  end
  
  before :all do
    @alimento1=Alimento.new("mango", 4, 2, 5, 2, 6, 0)
    @alimento2=Alimento.new("pera", 6, 1, 20, 6, 2, 1)
    @alimento3=Alimento.new("manzana", 6, 1, 15, 6, 2, 1)
    @lista1=Lista.new()
    @lista1.push_head(@alimento1)
    @lista1.push_head(@alimento2)
    @lista1.push_head(@alimento3)
  end

  context "Pruebas para las listas diblemente enlazadas" do
    it "Pruebas para enumerable" do
      puts @lista1.collect { |i| i.to_s}
    end
  end
end