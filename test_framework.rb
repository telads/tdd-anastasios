def assert_equals(val1, val2)
  val1 == val2
end

def it (description, &block)
      print  "#{description}"
      answer = block.call
    if answer == true
      puts  "they match"
    else
      puts "they do not match"
    end
end
