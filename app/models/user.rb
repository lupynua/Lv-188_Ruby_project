class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :articles
  has_many :comments
  has_many :commented_articles, through: :comments,
           source: :commentable, source_type: 'Article'
end
