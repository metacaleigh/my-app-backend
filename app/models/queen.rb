class Queen < ActiveRecord::Base
    has_many :quotes

    def most_popular_quote
        self.quotes.max_by{|q| q.claps}
    end
end