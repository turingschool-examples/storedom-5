class OrderCounterJob < ApplicationJob
  queue_as :default

  def perform
    count = ReportGenerator.new.multiple_orders
    ReportMailer.orders(count, "somewhere@example.io").deliver_now
  end
end
