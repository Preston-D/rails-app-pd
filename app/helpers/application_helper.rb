# frozen_string_literal: true

# Application Helper
module ApplicationHelper
  # returns true if the action and controller match the incomming strings
  def match_controller_action(controller, action)
    correct_c = controller == params[:controller]
    correct_a = action == params[:action]

    correct_c && correct_a
  end

  # returns a string to set the class of 'active' on elements if the action and controller match
  def active?(controller, action)
    match_controller_action(controller, action) ? 'active' : nil
  end

  # returns a non-null string to set the aria-current on elements if the action and controller match
  def aria_current?(controller, action)
    match_controller_action(controller, action) ? 'page' : nil
  end
end
