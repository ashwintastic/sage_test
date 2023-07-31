module MessageBroker
  module Email
    def initialize
      # it return mailer_object
    end

    def allowed_contents
      #[images, video, bl]
    end

    def temp_location
      # temp location for audio images
      #remove once send#
    end

    def send_message(channel_id, opts = {})
       #send(message: 'somelcation')
    end

    def channel
      #it return some mailer object
    end
  end
end