# controllers/public_controller.rb

class PublicboardController < ApplicationController
  layout :layout_to_render

  private

  # Defines the layout based on the administrator agent.
  def layout_to_render
    if browser.modern?
      "publicboard/application"
    else
      "publicboard/application"
    end
  end
end
