class AnswersController < ApplicationController
  
  before_filter :authorize, :only => [:index]
  
  # GET /answers
  # GET /answers.xml
  def index
    @answers = Answer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.xml
  def show
     @job = Job.find(params[:job_id])
     @question = @job.questions.find(params[:question_id])
     @answer = @question.answers.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @answer }
    end
  end

  # GET /answers/new
  # GET /answers/new.xml
  def new
    @answer = Answer.new
    @answer.question = Question.find(params[:question_id])
    @answer.job = Job.find(params[:job_id])
    @answer.question_id = params[:question_id]
    @answer.job_id = params[:job_id]
    
    @job = Job.find(params[:job_id])
    @question = @job.questions.find(params[:question_id])
  end

  # GET /answers/1/edit
  def edit
    @answer = Answer.find(params[:id])
    
  end

  # POST /answers
  # POST /answers.xml
  def create
    @job = Job.find(params[:job_id])
    @question = @job.questions.find(params[:question_id])
    @answer = @question.answers.build(params[:answer])
    respond_to do |format|
      if @answer.save
        format.html { redirect_to(job_question_answer_path(@job, @answer.question_id, @answer), :notice => 'Answer was successfully created.') }
        format.xml  { render :xml => @answer, :status => :created, :location => @answer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /answers/1
  # PUT /answers/1.xml
  def update
    @answer = Answer.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to(@answer, :notice => 'Answer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.xml
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to(answers_url) }
      format.xml  { head :ok }
    end
  end
end
