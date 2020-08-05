def assert_equals(val1, val2)
  val1 == val2
end

def it (description, &block)
      p "#{description}"
      result = block.call
    if result true
      return "they match"
    else
      return "they do not match"
    end
end
