class ReportGenerator

  def multiple_orders
    User.all.to_a.select {|user| user.orders.count > 1 }.count
  end
end
