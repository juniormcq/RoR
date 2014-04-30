class Stadium < ActiveRecord::Base
has_many :matches
validates :name_stadium, presence: true
validates :name_stadium, uniqueness: true
validates :city, uniqueness: true
validates :photo,  presence: true
validates :max_capacity, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 }
validates :photo, :format => { :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, :message => "Invalid URL", :multiline => true }
validates :city, inclusion: ['Belo Horizonte','Brasilia','Cuiaba','Curitiba','Fortaleza','Manaus','Natal','Recife','Rio de Janeiro','Salvador','Sao Paulo']
end
