class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    word_array = str.split(' ')
    word_array.map! do |word|
      if word.length > 4
        # replace letters in word with marklar or Marklar depending on original case
        word.sub!(/\w+/.match(word)[0], /[[:upper:]]/.match(word) ? 'Marklar' : 'marklar')
      end
      word
    end
    word_array.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    seq = [0,1]
    (1...nth).to_a.each do |n|
      # populate fibonacci sequesnce array
      seq.push(seq[n-1] + seq[n])
    end
    # select only even values
    seq.select!{|n| n.even?}
    # add the even values and return
    seq.inject(0, :+)
  end

end
