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
    pokemon_data = db.execute("SELECT * FROM pokemon WHERE id=?", id_number).flatten
    Pokemon.new(id: pokemon_data[0], name: pokemon_data[1], type: pokemon_data[2], db: db)
  end 
  
end
