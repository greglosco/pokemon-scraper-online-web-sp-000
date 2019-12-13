class Pokemon
  
  attr_accessor :id, :name, :type, :db 
  
  def initialize (id:, name:, type:, db:)
    @id = id 
    @name = name
    @type = type 
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id_number, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", id_number)
    Pokemon.new(id: pokemon[0], name: pokemon[1], type: pokemon[2], db: db)
  end 
  
end
