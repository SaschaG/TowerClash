class Tower < ActiveRecord::Base
has_many :coordinates
has_many :fires
has_many :ices
has_many :airs
has_many :earth
has_many :labs
has_many :factories
has_many :doctors
has_many :barracks
has_many :walls
has_many :stores
has_many :traps
has_many :ambush
has_many :escapetunnel
end
