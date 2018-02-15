# lib/console.rb
require 'pry'
require "watir"
require "console/version"

module Watir
  class Console
    class << self

      def start(args)
        browser = args.delete(:browser)
        Pry.config.hooks.add_hook(:before_session, :add_session) do |target, opt, _|
          target.puts "hello"
        end

        Pry.config.hooks.add_hook(:after_session, :exit) do |target, opt, _|
          target.puts "exit"
        end
        Watir::Browser.new(browser).pry
      end

    end # => end self
  end # => end Console
end # => end Watir