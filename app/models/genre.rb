class Genre < ActiveRecord::Base
  def self.dropdown_values
    Genre.select([:id, :name]).collect {|n| [n.name, n.id] }.to_h
  end
end
