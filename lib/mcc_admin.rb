require "mcc_admin/version"

module MccAdmin
  module Rack
    class AppStatus
      def initialize(app)
        @app = app
      end

      def call(env)
        if env['PATH_INFO'] == "/app_status"
          [200,
           {
               'Content-Type' => 'text/plain; charset=UTF-8',
               'Cache-Control' => 'no-cache'
           },
           ["OK (from the gem)"]
          ]
        else
          @app.call(env)
        end
      end
    end
  end
end

