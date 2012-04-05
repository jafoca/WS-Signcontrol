Admin.controllers :channels do

  get :index do
    @channels = Channel.all
    render 'channels/index'
  end

  get :new do
    @channel = Channel.new
    render 'channels/new'
  end

  post :create do
    @channel = Channel.new(params[:channel])
    if @channel.save
      flash[:notice] = 'Channel was successfully created.'
      redirect url(:channels, :edit, :id => @channel.id)
    else
      render 'channels/new'
    end
  end

  get :edit, :with => :id do
    @channel = Channel.find(params[:id])
    render 'channels/edit'
  end

  put :update, :with => :id do
    @channel = Channel.find(params[:id])
    if @channel.update_attributes(params[:channel])
      flash[:notice] = 'Channel was successfully updated.'
      redirect url(:channels, :edit, :id => @channel.id)
    else
      render 'channels/edit'
    end
  end

  delete :destroy, :with => :id do
    channel = Channel.find(params[:id])
    if channel.destroy
      flash[:notice] = 'Channel was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Channel!'
    end
    redirect url(:channels, :index)
  end
end
