class SessionsController < ApplicationController


  def create
  if user=login(params[:email],params[:password])
      flash[:notice]='登陆成功'
    	redirect_to '/articles/newart'
  else
    flash[:notice]='登陆失败'
    redirect_to '/users/index'
 end
   end













end
