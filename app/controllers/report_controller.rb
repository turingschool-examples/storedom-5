class ReportController < ApplicationController
  def index
  end

  def create
    count = ReportGenerator.new.multiple_orders
    ReportMailer.orders(count, "somewhere@example.io").deliver_now
    redirect_to root_url
  end
end

