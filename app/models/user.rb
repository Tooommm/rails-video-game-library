class User < ApplicationRecord
  has_one :library
  has_one_attached :photo

  attr_accessor :password

  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates_length_of :password, :in => 6..20, :on => :create
end
