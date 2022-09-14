class Tweet < ApplicationRecord
    validates :message, presence:true, length:{maximum: 256}
end
