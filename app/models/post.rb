class Post < ActiveRecord::Base
  attr_accessible :link, :title
  validates :title, :presence => true
  has_many :comments, :dependent => :destroy
  
  before_save :add_tag
  
  default_scope :limit => 100
  #scope :filter, lambda { |param| param == 'top' ? order(:max, :created_at) : order(:created_at) }

  scope :top, order(:max, :created_at)
  scope :bottom, order("max DESC").order("created_at DESC")
  scope :latest, order(:created_at)
  
  def add_tag
    self.description = "FOO"
  end
  
  def self.filter(param)
    if param == 'top'
      self.top
    elsif param == 'bottomo'
      self.bottom
    elsif param == 'latest'
      self.latest
    end
  end
  
  
end
