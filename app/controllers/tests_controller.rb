class TestsController < Simpler::Controller
  
  def index
    # render 'tests/list'
    @tests = Test.all
    # render plain: 'Plain text response'
    # status(203)
  end

  def create
  end

  def show
    # render plain: "Test: #{params[:id]}"
    @params = params[:id]
    status(201)
    set_header('Test-Header', 'text/html')
  end

end
