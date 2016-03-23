class Artist < ActiveRecord::Base
  belongs_to :area

  def self.dropdown_values
    Artist.select([:id, :name]).collect {|n| [n.name, n.id] }.to_h
  end
end
