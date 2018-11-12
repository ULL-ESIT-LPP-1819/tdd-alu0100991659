require "NutrientesEdu/version"

 Node = Struct.new(:value, :next, :prev)

  class Lista
    attr_reader :head, :tail
  end