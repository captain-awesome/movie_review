class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  searchkick

  #has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  #validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # hash conversion...
  # from: :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # to: styles: { medium: "300x300>", thumb: "100x100>" } 

  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
