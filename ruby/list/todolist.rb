class TodoList

  def initialize(ary)
    @list_of_items = ary
  end

  def get_items
    @list_of_items
  end

  def add_item(new_item)
    @list_of_items << new_item
  end

  def delete_item(deleted_item)
    @list_of_items.delete(deleted_item)
  end

  def get_item(list_index)
    @list_of_items[list_index]
  end

end