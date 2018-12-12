RSpec.describe Individuo do
  it "has a version number" do
    expect(Individuo::VERSION).not_to be nil
  end
  
    before :all do
        @individuo1 = Individuos.new("Peter", 1, 1, 2, 10, 13, 1, 0.0)
        @individuo2 = Individuos.new("Marta", 1, 1, 40, 160, 50, 0, 0.12)
        @individuo3 = Individuos.new("Ragnar", 1, 1, 2, 10, 39, 1, 0.54)
        @individuo4 = Individuos.new("Gonzalo", 1, 1, 2, 10, 89, 1, 0.12)
        @individuo5 = Individuos.new("Diana", 1, 1, 2, 10, 30, 0, 0.27)
        @ind = [@individuo1, @individuo2, @individuo3, @individuo4, @individuo5]
        @al1 = Alimento.new("pistacho", 20, 5, 10, 3, 10, 1)
        @al2 = Alimento.new("pera", 20, 5, 10, 3, 10, 3)
        @al3= Alimento.new("manzana", 20, 5, 10, 3, 10, 4)
        @al4 = Alimento.new("kiwi", 20, 5, 10, 3, 10, 2)
        @al5 = Alimento.new("ternera", 20, 2, 10, 3, 10, 1)
        @al6 = Alimento.new("leche", 81, 5, 21, 3, 65, 3)
        @al7= Alimento.new("soja", 94, 5, 36, 3, 66, 4)
        @al8 = Alimento.new("solomillo", 67, 5, 30, 3, 67, 2)
        @al9= Alimento.new("lichi", 89, 5, 17, 3, 68, 4)
        @men1 = [@al1, @al2, @al3, @al4, @al5]
        @men2 = [@al2, @al3, @al4, @al5, @al6]
        @men3 = [@al3, @al4, @al5, @al6, @al7]
        @men4 = [@al4, @al5, @al6, @al7, @al8]
        @men5 = [@al5, @al6, @al7, @al8, @al9]
        @menu_total = [@men1, @men2, @men3, @men4, @men5]
    end
      
    context "Pruebas para los individuos y menus" do
        it "Prueba" do
            @ind.each do |i|
                g = i.g_en_total
                @menu_total.each do |j|
                    @sum = 0;
                    men = j.reduce(0) {|sum, n| sum + n.val_ener}
                    min = g*0.9
                    max = g*1.1
                    if (men >= min && men <= max)
                        expect(j.collect{|k| k.to_s}).to eq(@men1.collect{|l| l.to_s})
                    end
                end
            end
        end
    end
end