require 'web_pipe/plugs/config'

class BaseApp
  include WebPipe

  plug :config, WebPipe::Plugs::Config.(
    rails_controller: ApplicationController
  )
end
