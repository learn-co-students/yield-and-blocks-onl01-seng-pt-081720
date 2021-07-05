def hello_t(array)
  i=0
  while i<array.length
  yield (array[1])
  i+=1
end
array
end

# call your method here!
def hello_t(array)
  if block_given?
    i = 0
 
    while i < array.length
      yield(array[i])
      i = i + 1
    end
 
    array
  else
    puts "Hey! No block was given!"
  end
end
  
  
#expect{ hello_t(names){ |name| puts name } }

#describe "#hello_t" do
 # let (:names) { ["Tim", "Tom", "Jim"] }

  #it "calls the block once for each element in the passed-in array" do
    #expect{ hello_t(names){ |name| puts name } }
      #.to output("Tim\nTom\nJim\n")
      #.to_stdout
  #end


