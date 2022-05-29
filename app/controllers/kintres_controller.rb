class KintresController < ApplicationController
    def index
      @trainings = Training.all
    end

    def new
        @training = Training.new
      end

    def create
      training = Training.new(training_params)
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
      params.require(:training).permit(:training_content)
    end
end
