require_relative "../test_funcs"
require_relative "../some_class"

include TestFuncs

describe "PassByWhat?" do
  let(:int){ 5 }
  let(:string){ "Before" }
  let(:hash){ {:a => "a", :b => "b"} }
  let(:klass) do
    klass = SomeClass.new
    klass.int = 5
    klass.string = "Before"
    klass.hash = {:a => "a", :b => "b"}

    klass
  end

  it "Passes a simple type by value." do
    expect(int).to eq 5
    takes_int(int) 
    expect(int).to eq 5
  end

  it "Passes a string by value." do
    expect(string).to eq "Before"
    takes_string(string)
    expect(string).to eq "Before"
  end

  it "Passes a hash by reference." do
    expect(hash.keys.count).to eq 2
    takes_hash(hash)
    expect(hash.keys.count).to eq 3
  end

  it "Passes an instance of a class by reference." do
    expect(klass.string).to eq "Before"
    takes_klass(klass)
    expect(klass.string).to eq "BeforeBefore"
  end
end

