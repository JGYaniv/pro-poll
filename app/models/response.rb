# == Schema Information
#
# Table name: responses
#
#  id         :bigint           not null, primary key
#  choice_id  :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Response < ApplicationRecord
    belongs_to :user
    belongs_to :choice,
        foreign_key: :choice_id,
        class_name: :AnswerChoice
end
