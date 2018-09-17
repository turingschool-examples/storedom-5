class ReportController < ApplicationController
  def index
  end

  def create
    OrderCounterJob.perform_later
    redirect_to root_url
  end
end

