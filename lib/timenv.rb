# frozen_string_literal: true

require_relative "timenv/version"

require 'time'

module Timenv
  class Error < StandardError; end

  class Time
    class << self
      def now
        ::Time.parse(envtime)
      rescue
        ::Time.now
      end

      private

      def envtime
        ENV['TIMENV']
      end
    end
  end
end
