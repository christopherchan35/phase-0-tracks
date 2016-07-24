# 5.4 Nested Data Structures

utensil_drawer = {
  fork: {
    title: 'Forks',
    amount: {
      total: 10,
      dirty: 3,
      clean: 7
    },
    types: [
      'Salad',
      'Fruit',
      'Dinner'
    ]
  },

  spoon: {
    title: 'Spoons',
    amount: {
      total: 15,
      dirty: 5,
      clean: 10
    },
    types: [
      'Soup',
      'Tea',
      'Table'
    ]
  },

  knife: {
    title: 'Knives',
    amount: {
      total: 5,
      dirty: 1,
      clean: 4
    },
    types: [
      'Bread',
      'Butter',
      'Steak'
    ]
  }
}
p "The 3 components of any good utensil drawer are #{utensil_drawer[:fork][:title]}, #{utensil_drawer[:spoon][:title]}, and #{utensil_drawer[:knife][:title]}."

p "In total there are #{utensil_drawer[:spoon][:amount][:total]} spoons, #{utensil_drawer[:spoon][:amount][:dirty]} of which are dirty and #{utensil_drawer[:spoon][:amount][:clean]} that are clean."

p "It should also offer the knife staples: #{utensil_drawer[:knife][:types][0]}, #{utensil_drawer[:knife][:types][1]}, and #{utensil_drawer[:knife][:types][2]}."