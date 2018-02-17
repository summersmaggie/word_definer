class Definition
  attr_accessor :definition
  attr_reader :id

  @@definition_list = []

  def self.clear_list
    @@definition_list = []
  end

  def initialize(definition)
    @definition = definition
    @id = @@definition_list.length + 1
  end

  def self.all
    @@definition_list
  end

  def save_definition
    @@definition_list.push(self)
  end

  def self.find(id)
    definition_id = id.to_i()
    @@definition_list.each do |definition|
      if definition.id == definition_id
        return definition
      end
    end
  end

end
