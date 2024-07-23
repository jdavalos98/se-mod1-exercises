# ./online_order.rb

module Deliverable
  def confirmation(thing)
    "You got #{thing}."
  end

  def review
    "Please rate your order within 30 days."
  end

  def delivery
    if self.is_a?(GrubhubOrder)
      "Your food will arrive in 45-60 minutes."
    elsif self.is_a?(AmazonOrder)
      "Your order will arrive in 2 business days."
    end

  end
end