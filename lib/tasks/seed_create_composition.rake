desc "Create Goods"
task seed_create_goods: :environment do
  Composition.destroy_all

  Composition.create([
    {title: 'Белорусские', code: 1},
    {title: 'Славянские', code: 2},
    {title: 'Roshe', code: 3},
  ])

  ap "Compositions create"
end
