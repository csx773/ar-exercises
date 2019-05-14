class Store < ActiveRecord::Base
    has_many :employees

    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0} 
    validates :name, length: { minimum: 3 }
    validate :have_atleast_one_appreal

    def have_atleast_one_appreal
        unless mens_apparel or womens_apparel
            errors.add(:mens_apparel, "Must have atleast men appreal")
            errors.add(:womens_apparel, "Must have atleast women appreal")
        end
    end
end

