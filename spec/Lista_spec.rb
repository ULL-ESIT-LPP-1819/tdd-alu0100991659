 

RSpec.describe Lista do
  it "has a version number" do
    expect(Lista::VERSION).not_to be nil
  end
  
  before :all do
    @nodo = Node.new(15, nil, nil)
    @lista1 = Lista.new()
  end
  
  it "does something useful" do
    expect(true).to eq(true)
  end
  
  it "EL nodo tiene un prev y un next" do
    expect(@nodo).to have_attributes(:prev => nil, :next => nil)
  end
  
  context "Pruebas para las listas" do
    it "El objeto lista tiene cabeza y cola" do
      expect(@lista1).to have_attributes(:head => nil, :tail => nil)
    end
    it "Se puede hacer un  push por la cabeza" do
      @lista1.push_head(1)
      @lista1.push_head(2)
      expect(@lista1.head.value).to eq(2) 
    end
  end
end
