class PagesController < ApplicationController
  def home
    @today = Date.today.strftime("%d/%m/%y")
  end

  def team
    @members = ["Bob","Patrice","Kamal"]
  end

  def join_us
    render plain: "Rejoindre"
  end
end
