class Gallery < ActiveRecord::Base


  has_attached_file :photo, styles: { medium: '300x300>', thumb: '60x60>'}, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  #validates :name, presence: true
 # validates :price, numericality: {greater_than: 0}
end
