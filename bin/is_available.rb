#!/usr/bin/env ruby

require 'bundler/setup'
require 'is_available'
require 'command_lion'

CommandLion::App.run do

	name "is_available"
	description "Simply check if a domain has been registered ( or if it is resolvable ) to determine if it's available."
	version IsAvailable::VERSION

	command :check do
		flag "--check"
		description "Check if a given domain has been found to be registered ( or not )."
		type :string
    action do
      check = IsAvailable.registered?(argument)
      if options[:true_or_false].given?
        puts check
      else
        if check
          puts "#{argument} is not available!"
        else
          puts "#{argument} is available!"
        end
      end
      exit 1 if check; exit 0
		end

    option :true_or_false do
      flag "--true-or-false"
      description "Simply provide a true ( if the domain is avaialble ) or false response."
    end
  end

end
