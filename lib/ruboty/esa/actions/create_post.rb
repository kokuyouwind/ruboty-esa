module Ruboty
  module Esa
    module Actions
      class CreatePost < Base
        def call(post_params)
          with_verification do
            response = client.create_post(post: post_params)

            if response.body['error']
              message.reply("error: #{response.body['message']}")
            else
              message.reply("post created: #{response.body['url']}")
            end

          end
        end
      end
    end
  end
end
