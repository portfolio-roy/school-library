require './person'

class ClassName
  def initialize(specialization)
    super(name, age, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
