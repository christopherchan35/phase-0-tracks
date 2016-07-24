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
    }
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
    }
    types: [
      'Bread',
      'Butter',
      'Steak'
    ]
  }
}