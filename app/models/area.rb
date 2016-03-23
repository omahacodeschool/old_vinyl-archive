class Area < ActiveRecord::Base
  def self.dropdown_values
    Area.select([:id, :name]).collect {|n| [n.name, n.id] }.to_h
  end
end
