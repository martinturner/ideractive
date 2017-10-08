class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /results
  # GET /results.json
  def index
    @result_english = Result.where(subject_id: '1').order('score ASC') # a little bit weird here, as got to manually input the ID for
    @result_math = Result.where(subject_id: '2').order('score ASC') # subject in order to separate, maybe a better way though.
  end

  # GET /results/1
  # GET /results/1.json
  def show
  end

  # GET /results/new
  def new
    @result = Result.new # retrieve the students to make a new result for them
    @students = Student.all
    @subjects = Subject.all
  end

  # GET /results/1/edit
  def edit
  end

  # POST /results
  # POST /results.json
  def create

    @result = Result.new(result_params)
    @students = Student.where(id: @result.student_id) #make sure the id is the students id
    @subjects = Subject.where(id: @result.subject_id) #makes sure the id is the subject id
    respond_to do |format|
      if @result.save
        format.html { redirect_to @result, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:score, :subject_id, :student_id)
    end
end
