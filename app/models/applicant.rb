class Applicant < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper
  include Rails.application.routes.url_helpers

  attr_accessor :ip_address

  validates_presence_of :body
  validates_presence_of :user

  belongs_to :user
  belongs_to :user, :inverse_of => :applicants

  before_validation :sanitize_body

  before_create :create_mentions
  after_create :mention_notify

  default_scope { where("hidden is false").order(created_at: :desc) }

  def destroy
    self.hidden = true
    self.save
  end

  def viewable_by? current_user
    return true unless self.consumers_only?
    self.user.consumers.include? current_user or self.user == current_user
  end

  private



  protected

  def sanitize_body
    self.body = sanitize(self.body, tags: %w(a), attributes: %w(href))
  end
end
