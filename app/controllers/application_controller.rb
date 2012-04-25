# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  def load_notices
    @NoticiasHome = Notice.all(:conditions => ['published = 1'], :limit => 2, :order => "RAND()")
  end
  
  def load_highlights
    @Destaques = Highlight.all(:conditions => ['published = 1'], :order => "position ASC")
  end
end
