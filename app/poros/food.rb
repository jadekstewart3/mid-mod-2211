class Food
  attr_reader :upc,
              :description,
              :brand,
              :ingredients
              
  def initialize(info)
    @upc = info[:gtinUpc]
    @description = info[:description]
    @brand = info[:brandOwner]
    @ingredients = info[:ingredients]
  end
end