 require "spec_helper"

RSpec.describe Lista do
  it "has a version number" do
    expect(Lista::VERSION).not_to be nil
  end
  
  before :all do
    @nodo = Node.new(15, nil, nil)
    @lista1 = Lista.new()
    @lista2 = Lista.new()
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
    it "Se puede hacer un push por la cola" do
      @lista1.push_tail(1)
      @lista1.push_tail(2)
      expect(@lista1.tail.value).to eq(2)
    end
    it "Se puede hacer un pop por la cabeza" do
      @lista1.push_head(5) 
      expect(@lista1.pop_head().value).to eq(5)
    end
    it "Se puede hacer un pop por la cola" do
      @lista1.push_tail(7)
      expect(@lista1.pop_tail().value).to eq(7)
    end
    it "Se pueden meter aimentos" do
      @node1 = Alimento.new("pistacho", 20, 5, 30, 3, 60, 1)
      @lista1.push_head(@node1)
      expect(@lista1.head.value.nombre).to eq("pistacho")
    end
    it "La lista se ordena" do
      @node1 = Alimento.new("pistacho", 20, 5, 30, 3, 60, 1)
      @node2 = Alimento.new("pistachito", 20, 5, 30, 3, 60, 3)
      @node3 = Alimento.new("pistachete", 20, 5, 30, 3, 60, 4)
      @node4 = Alimento.new("pistachuto", 20, 5, 30, 3, 60, 2)
      @lista2.push_head(@node1)
      @lista2.push_head(@node2)
      @lista2.push_head(@node3)
      @lista2.push_head(@node4)
      #expect(@lista2.sort).to eq([@node1, @node4, @node2, @node3])
      @lista2 = @lista2.sort_salt()
      expect(@lista2.pop_tail().value.sal).to eq(4)
      expect(@lista2.pop_tail().value.sal).to eq(3)
      expect(@lista2.pop_tail().value.sal).to eq(2)
      expect(@lista2.pop_tail().value.sal).to eq(1)
    end
    it "imprime bien el to_s" do
      expect(@lista2.to_s).to eq("(pistachuto, pistachete, pistachito, pistacho, )")
    end
  end
end
