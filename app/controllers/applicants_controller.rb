class ApplicantsController < ApplicationController
  before_filter :load_applicants, only: [:index, :create]
  autocomplete :user, :username, :full => true

  def index
    @applicant = Applicant.new
  end

  def create
    applicant_params = params.require(:applicant).permit(:consumers_only, :body, :client_name, :date_created, :phone, :task_date, :task, :billed_date, :amount, :app_date, :app_time, :app_notes)
    @applicant = current_user.applicants.new(applicant_params)
    @applicant.ip_address = request.remote_ip
    if @applicant.save
      flash[:notice] = "Your applicant has been posted"
      redirect_to applicants_path
    else
      flash[:alert] = "Your applicant couldn't be posted. #{@applicant.errors.full_messages.join(" ")}"
      render :index
    end
  end

  def destroy
    applicant = Applicant.find(params[:id])
    applicant.destroy
    flash[:alert] = "Your applicant has been deleted"
    redirect_to :back
  end

  private

  def load_applicants
    @applicants = Applicant.page params[:page]
  end
end

