class Quote < ActiveRecord::Base
    belongs_to :queen

    def self.get_random_quote
        self.all.sample
    end
end