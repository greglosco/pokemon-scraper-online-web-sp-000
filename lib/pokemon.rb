class Pokemon
  
  attr_accessor :id, :name, :type, :db 
  
  def initialize (id:=nil, name:, type:, db:)
    @id = id 
    @name = name
    @type = type 
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id_number, db)
    
  end 
  
end
