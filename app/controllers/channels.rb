WsSigncontrol.controllers :channels do
  # get :index, :map => "/foo/bar" do
  #   session[:foo] = "bar"
  #   render 'index'
  # end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end

  get :index do
    @ws = Channel.find_by_name('WorkSighted')
    @ci = Channel.find_by_name('CollectiveIdea')
    @bs = Channel.find_by_name('BlueSky')
    render 'channels/index'
  end

end
