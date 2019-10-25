require 'json'

module Ruboty
  module Handlers
    class Esa < Base
      env :ESA_TEAM, 'esa.io team name'
      env :ESA_TOKEN, 'esa.io access token'

      on(
        /create_post (?<json>.*)\z/,
        name: "create_post",
        description: "Create a new post",
      )

      def create_post(message)
        Ruboty::Esa::Actions::CreatePost.new(message)
          .call(JSON.parse(message[:json]).symbolize_keys)
      end
    end
  end
end
