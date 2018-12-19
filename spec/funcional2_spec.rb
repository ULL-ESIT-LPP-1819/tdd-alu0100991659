require 'benchmark'
require "spec_helper"
RSpec.describe Individuos do
  it "has a version number" do
    expect(Individuos::VERSION).not_to be nil
  end
  
   context "Pruebas para los individuos y menus" do
    
        before :each do
        @lista = Lista.new()
        @lista.push_head(Individuos.new("Peter", 1, 1, 2, 10, 13, 1, 0.0))
        @lista.push_head(Individuos.new("Marta", 1, 1, 40, 160, 50, 0, 0.12))
        @lista.push_head(Individuos.new("Ragnar", 1, 1, 2, 10, 39, 1, 0.54))
        @lista.push_head(Individuos.new("Gonzalo", 1, 1, 2, 10, 89, 1, 0.12))
        @lista.push_head(Individuos.new("Diana", 1, 1, 2, 10, 30, 0, 0.27))
        @lista.push_head(Individuos.new("Pedro", 1, 1, 2, 100, 18, 1, 0.0))
        @lista.push_head(Individuos.new("Gloria", 1, 1, 40, 110, 50, 0, 0.12))
        @lista.push_head(Individuos.new("Rollo", 1, 1, 25, 146, 30, 1, 0.54))
        @lista.push_head(Individuos.new("Alejandro", 1, 1, 16, 167, 80, 1, 0.12))
        @lista.push_head(Individuos.new("Almáciga", 1, 1, 34, 138, 27, 0, 0.27))
        
        
        
        @al1 = Alimento.new("pistacho", 20, 5, 10, 3, 10, 1)
        @al2 = Alimento.new("pera", 20, 5, 10, 3, 10, 3)
        @al3= Alimento.new("manzana", 0, 0, 0, 0, 0, 0)
        @al4 = Alimento.new("kiwi", 0, 0, 0, 0, 0, 0)
        @al5 = Alimento.new("ternera", 20, 2, 10, 3, 10, 1)
        @al6 = Alimento.new("leche", 0, 0, 0, 0, 0, 0)
        @al7= Alimento.new("soja", 94, 5, 36, 3, 66, 4)
        @al8 = Alimento.new("solomillo", 67, 5, 30, 3, 67, 2)
        @al9= Alimento.new("lichi", 0, 0, 0, 0, 0, 0)
        @al10= Alimento.new("papaya", 0, 0, 0, 0, 0, 0)
        @men1 = [@al1, @al2, @al3, @al4, @al5]
        @men2 = [@al2, @al3, @al4, @al5, @al6]
        @men3 = [@al3, @al4, @al5, @al6, @al7]
        @men4 = [@al4, @al5, @al6, @al7, @al8]
        @men5 = [@al5, @al6, @al7, @al8, @al9]
        @men6 = [@al6, @al7, @al8, @al9, @al10]
        @men7 = [@al1, @al3, @al5, @al7, @al9]
        @men8 = [@al2, @al4, @al6, @al8, @al10]
        @men9 = [@al1, @al2, @al4, @al5, @al8]
        @men10 = [@al3, @al4, @al6, @al9, @al10]
        @menu_total = [@men1, @men2, @men3, @men4, @men5, @men6, @men7, @men8, @men9, @men10]
        
        
        def bubblelol (v)!
            puts v.size
            for i in 0..v.size
                uno = v[i].reduce(0) {|sum, n| sum + n.val_ener} if(i<v.size)
                for j in i+1..v.size-1
                    dos = v[j].reduce(0) {|sum, n| sum + n.val_ener}
                    if(uno > dos)
                        aux = v[j]
                        v[j] = v[i]
                        v[i] = aux
                    end
                end
            end
            return v
        end
        
        def bubbleeach (v)!
            v.each do |i|
                uno = i.reduce(0) {|sum, n| sum + n.val_ener}
                v.each_with_index do |a, index|
                    dos = a.reduce(0) {|sum, n| sum + n.val_ener}
                    aux = v.size-1
                    break if (index == aux)
                    if dos > uno
                        aux = v[index+1]
                        v[index+1] = v[index]
                        v[index] = aux
                    end
                end
            end
            return v 
        end
        
        def bubbleforlist(lista)!
            v = lista.collect{|y| y}
            for i in 0..v.size
                uno = v[i].g_en_total if(i<v.size)
                for j in i+1..v.size-1
                    dos = v[j].g_en_total
                    if(uno > dos)
                        aux = v[j]
                        v[j] = v[i]
                        v[i] = aux
                    end
                end
            end
            return v
        end
            
        def bubbleeachlist(lista)!
            v = lista.collect{|y| y}
            v.each do |i|
                uno = i.g_en_total
                v.each_with_index do |a, index|
                    dos = a.g_en_total
                    aux = v.size-1
                    break if index == aux
                    if dos > uno
                        aux = v[index+1]
                        v[index+1] = v[index]
                        v[index] = aux
                    end
                end
            end
            return v 
        end
                        
            
    end
      
   
        it "Benchmark" do
            Benchmark.bmbm do |test|
                test.report("Con el metodo sort para array\n") {@menu_total.dup.sort}
                test.report("Con el metodo for para array\n") {bubblelol(@menu_total.dup)}
                test.report("Con el metodo for para array\n") {bubbleeach(@menu_total.dup)}
                test.report("Con el metodo sort para lista\n") {@lista.dup.sort}
                test.report("Con el metodo for para lista\n") {bubbleforlist(@lista.dup)}
                test.report("Con el metodo for para lista\n") {bubbleeachlist(@lista.dup)}
            end
        end
    end
end