smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

=begin
def blend(smoothie_ingredients)
  ingredients = smoothie_ingredients.keys
  blended_ingredients = ingredients.join("").split(" ").join("").split("").shuffle.join("")
  return blended_ingredients
end
=end

class Blend

  def initialize(smoothie_ingredients)
    @smoothie_ingredients = smoothie_ingredients
  end

  def blend(smoothie_ingredients)
    ingredients = smoothie_ingredients.keys
    blended_ingredients = ingredients.join("").split(" ").join("").split("").shuffle.join("")
    return blended_ingredients
    self
  end

  def turn_on
    smoothie_ingredients = @smoothie_ingredients
    ingredients = smoothie_ingredients.keys
    puts "Do you want to turn the blender on?  Your contents are #{ingredients}. (Y/N)"
    res = gets.chomp
    if res == "Y" || res == "y"
      puts blend(smoothie_ingredients)
    else
      puts "The blender is off!"
    end
  end
end

mix_up = Blend.new(smoothie_ingredients)
mix_up.turn_on