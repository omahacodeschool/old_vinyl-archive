class Instrument < ActiveRecord::Base
  def self.dropdown_values
    Instrument.select([:id, :name]).collect {|n| [n.name, n.id] }.to_h
  end
end
