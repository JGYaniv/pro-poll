# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  text       :string           not null
#  poll_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ApplicationRecord
end
