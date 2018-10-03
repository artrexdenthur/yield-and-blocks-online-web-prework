def hello_t(array)
  if block_given?  
    i = 0 
    
    for i in (0..array.length - 1)
      yield array[i]
    end
    array
  else
    puts 'Hey! No block was given!'
end

# call your method here!
hello_t(['Tim', 'Tom', 'Jim']) do |name|
  if name.start_with?('T')
    puts "Hi, #{name}"
  end
end
