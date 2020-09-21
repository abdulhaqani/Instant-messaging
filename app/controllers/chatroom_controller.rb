# frozen_string_literal: true

class ChatroomController < ApplicationController
  def home
    @messages = Message.all
  end
end
