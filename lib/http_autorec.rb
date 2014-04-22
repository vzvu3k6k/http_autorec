require "http_autorec/version"

module HTTPAutorec
  module_function

  [:turn_on!, :turn_off!, :turned_off, :turned_on?].each do |name|
    define_method :name do |*args, &block|
      VCR.send(name, *args, &block)
    end
  end

  def start
    require 'vcr'

    VCR.configure do |c|
      c.cassette_library_dir = ENV['HTTP_AUTOREC_DIR'] || 'http_autorec_cache'
      c.hook_into :webmock
    end

    VCR.insert_cassette('autorec', :record => :new_episodes)
    VCR.turn_on!

    at_exit do
      VCR.eject_cassette
    end
  end
end

HTTPAutorec.start
