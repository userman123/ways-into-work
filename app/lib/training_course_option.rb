class TrainingCourseOption
  attr_reader :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.all
    [
      new('first_aid', 'First aid'),
      new('health_and_saftey', 'Health and Safety'),
      new('cscs', 'CSCS (Construction Skills)'),
      new('sia', 'SIA (Security)'),
      new('driving_licence', 'Driving licence'),
    ]
  end

  def self.find(id)
    all.detect{|x| x.id == id}
  end

  def self.display(ids = [])
    ids.collect{|id| find(id).name}.join(', ')
  end

end

