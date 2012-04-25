class HomeController < ApplicationController
  before_filter :load_notices, :load_highlights
end
