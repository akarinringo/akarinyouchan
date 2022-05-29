class KintresController < ApplicationController
  before_action :authenticate_user!
    def index
      @trainings = Training.all
      if params[:tag_ids]
        @trainings = []
        params[:tag_ids].each do |key, value|
          if value == "1"
            tag_trainings = Tag.find_by(name: key).trainings
            @trainings = @trainings.empty? ? tag_trainings : @trainings & tag_trainings
          end
      end
    end
      if params[:tag]
        Tag.create(name: params[:tag])
      end
    end

    def new
        @training = Training.new
    end

    def create
      training = Training.new(training_params)
      training.user_id = current_user.id
      if training.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end

    def show
      @training = Training.find(params[:id])
    end
  
    def edit
      @training = Training.find(params[:id])
    end

    def update
    training = Training.find(params[:id])
      if training.update(training_params)
        redirect_to :action => "show", :id => training.id
      else
        redirect_to :action => "new"
      end
    end

    def destroy
      training = Training.find(params[:id])
      training.destroy
      redirect_to action: :index
    end

    private
    def training_params
      params.require(:training).permit(:training_content, :youtube_url, :image, tag_ids: [])
    end
  end
