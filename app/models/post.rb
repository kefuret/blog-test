class Post < ApplicationRecord

  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :comments, dependent: :destroy

  # has_many :comments
  #
  # has_attached_file :image, styles: { large: '1105x300#', medium: '600x440>', thumb: '160x250#', small: '250x200#' }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :title, presence: true, uniqueness: { case_sensitive: false, message: 'Titre déja existant'}
  validates :text, presence: true
end