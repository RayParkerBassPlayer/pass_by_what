module TestFuncs
  def takes_int(int)
    int = int * 2
  end

  def takes_string(string)
    string = string *2
  end

  def takes_hash(hash)
    hash[:added_by_func] = "I'm here!"
  end

  def takes_klass(klass)
    klass.string = klass.string * 2
  end
end
