def ke
  print('hello')
end

10.times do |time|
  print(time)
end

class Hello
  def initialize(params, first, second)
    @params = params
    @first = first
    @second = second
  end

  def update(params)
    model = Model.update(params)
    
    model.attributes
  end
end
