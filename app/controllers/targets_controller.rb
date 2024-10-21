class TargetsController < ApplicationController
  def show
    target_id = params[:id]
    url = Url.find_by({target_id: target_id})
    source = url.source
    target = url.target
    redirect_to source, allow_other_host: true and return
  end
end
