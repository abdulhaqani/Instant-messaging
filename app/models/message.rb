# frozen_string_literal: true

class Message < ApplicationRecord
  validates :message_body, presence: true
  belongs_to :user
end
