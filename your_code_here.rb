class ReimplementEnumerable
  def initialize(collection)
    @collection = collection
  end

  def select
    result = []

    @collection.each do |element|
      should_select = yield(element)
      if should_select
        result << element
      end
    end

    return result
  end

  def all?
    @collection.each do |element|
      pizza_party =yield(element)
      if !pizza_party
        return false
      end
    end

    return true
  end

  def count
    count = 0
    @collection.each do |element|
      if yield(element)
        count += 1
      end
    end
    count
  end

  def find
    @collection.each do |element|
      if yield(element)
        return element
      end
    end
    return nil
  end

  def each_with_index
    index = 0
    @collection.each do |element|
      yield(element, index)
      index += 1
    end
  end

  def find_index
    index = 0
    result = nil
    @collection.each do |element|
      yield(element)
      index += 1
    end
  end

  def include?(argument)
    @collection.each do |element|
      if element == argument
        return true
      end
    end
    return false
  end















  # The rest of the code for all the enumerables
  # you must write go here
end
