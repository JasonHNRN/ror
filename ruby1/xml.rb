require 'rexml/document'
include REXML
file = File.new('cart.xml')
doc = Document.new(file)
root = doc.root
puts ""
puts "Hello, #{root.attributes['id']}, Find below the bill generated for your purchase..."
puts ""
sumtotal = 0

