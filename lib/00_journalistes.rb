local_dir = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(local_dir)
require "00_methods.rb"
require "00_data.rb"


puts "Il y a " + size(JOURNALISTES).to_s + " handles dans cet array"
puts "Le handle le plus court est " + shorter(JOURNALISTES)
puts "Il y a " + five(JOURNALISTES).to_s + " handles avec 5 caractères"
puts majuscule(JOURNALISTES).to_s + " handles commencent avec une majuscule"
puts "Voici les handles triés par ordre alphabétique : " + alpha_sort(JOURNALISTES).to_s
puts "Voici les handles triés par longueur : " + length_sort(JOURNALISTES).to_s
puts "Le handle @epenser est en position " + pos(JOURNALISTES,"@epenser").to_s
puts "Voici la répartition des handles par longueur :"
puts filter_by_size(JOURNALISTES)