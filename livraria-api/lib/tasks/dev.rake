require 'faker'
namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
 puts "Cadastrando 10 enderecos fake"
 10.times do |i|
  Endereco.create!(
    rua: Faker::Address.street_name,
    numero: Faker::Address.building_number
  )
end
puts "10 enderecos cadastrados com sucesso"

puts "Cadastrando 10 clientes fake"
  10.times do |i|
  Cliente.create!(
  nome: Faker::Name.name,
  idade: Faker::Date.birthday(min_age: 18, max_age: 65),
  sexo: Faker::Gender.binary_type,
  endereco: Endereco.all.sample
  )
end
  puts "Clientes cadastrados com sucesso"
  
  puts "Cadastrando 10 autores fake"
  10.times do |i|
  Autor.create!(
    nome: Faker::Book.author,
    aniversario: Faker::Date.birthday(min_age: 18, max_age: 65)  
  )
end
  puts "Autores cadastrados com sucesso"
  
  puts "Cadastrando 10 generos fake"
  10.times do |i|
  Genero.create!(
  nome: Faker::Book.genre,
  recomendacao: Faker::Relationship.familial
  )
end
  puts "Generos cadastrados com sucesso"


  puts "Cadastrando 10 livros fake"
  10.times do |i|
  Livro.create!(
    exemplar: Faker::Book.title,
    ano: Faker::Date.between(from: 2.days.ago, to: Date.today),
    disponibilidade: Faker::Lorem.word,
    autor: Autor.all.sample,
    genero: Genero.all.sample
  )
  end
  puts "Livros cadastrados com sucesso"
  end


  end
