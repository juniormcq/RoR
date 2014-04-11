class Stadium < ActiveRecord::Base
validates :name_stadium, presence: true
validates :name_stadium, uniqueness: true
validates :max_capacity, length: {minimum: 0, maximum: 200}
validates :photo,  presence: true
validates :city, inclusion: ['Belo Horizonte','Brasilia','Cuiaba','Curitiba','Fortaleza','Manaus','Natal','Recife','Rio de Janeiro','Salvador','Sao Paulo']
end
