class MyappsController < ApplicationController
  
  
  def index
    @myapps = Myapp.all #allメソッドはmyappsテーブルのレコードを全て取得
  end
  
  def new
    @myapp = Myapp.new
  end

  def create
      @myapp = Myapp.new(params.require(:myapp).permit(:title, :start, :finish, :allday, :memo))
  if @myapp.save
    flash[:notice] = "スケジュールを登録しました！"
    redirect_to :myapps
  else
    render "new"
  end
  end

  def show
     @myapp = Myapp.find(params[:id])
  end

  def edit
    @myapp = Myapp.find(params[:id])
  end

  def update
   @myapp = Myapp.find(params[:id])
     if @myapp.update(params.require(:myapp).permit(:title, :start, :finish, :allday, :memo))
    flash[:notice] = "ユーザーIDが「#{@myapp.id}」の情報を更新しました"
    redirect_to :myapps
  else
    render "edit"
  end
  end

  def destroy
    @myapp = Myapp.find(params[:id])
    @myapp.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to :myapps
  end
  
  
  
end
