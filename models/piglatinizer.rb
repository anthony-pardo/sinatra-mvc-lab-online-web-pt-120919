class PigLatinizer 
  def piglatinize(str)
    words = str.split(' ')
    
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
  
    arr = []
    words.each do |word| 
      if vowels.include?(word[0])
        arr << (word + 'way')
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        arr << (word[2..-1] + word[0..1] + 'ay')
      elsif consonants.include?(word[0])
        arr << (word[1..-1] + word[0] + 'ay')
      else
        arr << word # return unchanged
      end
    end
    arr.join(' ')
  end
end