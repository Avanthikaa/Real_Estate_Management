class House < ActiveRecord::Base
    validates :realestateid, presence: true, numericality: { only_integer: true }
    validates :location, presence: true
    validates :squarefootage, presence: true, numericality: true
    validates :year, presence: true, numericality: { only_integer: true }
    validates :list_price, presence: true
    validates :floors, presence: true, numericality: { only_integer: true }
    validates :contact, presence: true, numericality: { only_integer: true }, length: {is: 10}
 end
