class Artist < ActiveRecord::Base
  def self.dropdown_values
    Artist.select([:id, :name]).collect {|n| [n.name, n.id] }.to_h
  end
end
