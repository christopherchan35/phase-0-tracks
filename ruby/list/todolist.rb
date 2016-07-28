class TodoList
  def initialize(ary)
    @array = ary
  end

  def get_items
    @array
  end

  def add_item(new_item)
    @array << new_item
  end

  def delete_item(deleted_item)
    @array.delete(deleted_item)
  end

  def get_item(index)
    @array[index]
  end
end