local_dir = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(local_dir)
require "01_methods.rb"
require "01_data.rb"

hash = build_hash(DEVISES, PRIX)
puts "Voici le wallet construit :"
puts hash
puts "La valeur maximum du wallet est " + max(hash).to_s
puts "La valeur minimum du wallet est " + min(hash).to_s
puts "Les cryptos suivantes ont une valeur inférieure à 6000 " + lowest(hash, 6000).to_s
puts lowest(hash, 6000).length
puts "La crypto la plus élevée en dessous de 6000 est " + high_lowest(hash, 6000).to_s
