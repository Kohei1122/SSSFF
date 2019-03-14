class Facility < ApplicationRecord
    def self.search(search)
      if search
        Facility.where(['content LIKE ?', "%#{search}%"])
      else
        Facility.all
      end
    end
end
