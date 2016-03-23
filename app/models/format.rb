class Format < ActiveRecord::Base
  def self.dropdown_values
    Format.select([:id, :name]).collect {|n| [n.name, n.id] }.to_h
  end
end
