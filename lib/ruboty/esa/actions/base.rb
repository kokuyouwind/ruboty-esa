module Ruboty
  module Esa
    module Actions
      class Base
        def initialize(message)
          @message = message
        end

        attr_reader :message

        private

        def with_verification
          case
          when !has_access_token?
            require_access_token
          when !has_team?
            require_team
          else
            yield
          end
        end

        def has_access_token?
          !!access_token
        end

        def require_access_token
          message.reply("I don't know your esa access token")
        end

        def has_team?
          !!team
        end

        def require_team
          message.reply("I don't know your esa team")
        end

        def client
          ::Esa::Client.new(access_token: access_token, current_team: team)
        end

        def access_token
          ENV['ESA_TOKEN']
        end

        def team
          ENV['ESA_TEAM']
        end
      end
    end
  end
end
