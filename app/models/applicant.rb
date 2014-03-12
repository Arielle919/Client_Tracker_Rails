  class Applicant < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper
  include Rails.application.routes.url_helpers

  attr_accessor :ip_address

  validates_presence_of  :client_name, :date_created, :phone, :task_date, :task, :billed_date, :amount, :app_date, :app_time, :app_notes
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

  protected

  def create_mentions
    find_mentions
    unless @mentions.empty?
      @mentions.each do |mentioned_user|
        new_string = "<a href='#{user_url(mentioned_user)}'>@#{mentioned_user.username}</a>"
        self.client_name = self.client_name.gsub(/(@#{mentioned_user.username})/i,new_string)
      end
    end
  end

  def find_mentions
    @mentions = []
    reg = /(?:@\w+)/
    mentions = self.client_name.scan(reg).uniq
    mentions.each do |mention|
      mention[0] = ''
      @mentions << User.find_by_username(mention.downcase)
    end
  end

  def mention_notify
    unless @mentions.empty?
      @mentions.each do |mentioned_user|
        NotificationMailer.mention_email(mentioned_user,self.user,self.client_name).deliver
      end
    end
  end

  def sanitize_body
    self.body = sanitize(self.client_name, tags: %w(a), attributes: %w(href))
  end
end
