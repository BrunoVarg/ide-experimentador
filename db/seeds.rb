require 'faker'

# Exemplo: criando 10 simuladores fictícios
4.times do
  Simulator.create(
    name: "Simulator1",
    disabled: false
  )
end
# Apagar exemplos do banco de dados
# Simulator.where(disabled: false).destroy_all
