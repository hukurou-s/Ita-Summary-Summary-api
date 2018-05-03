# == Schema Information
#
# Table name: articles
#
#  id         :bigint(8)        not null, primary key
#  date       :time             not null
#  name       :string           not null
#  url        :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#

class Article < ApplicationRecord
end
