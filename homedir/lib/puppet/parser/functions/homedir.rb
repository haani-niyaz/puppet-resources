# homedir.rb
module Puppet::Parser::Functions
  newfunction(:homedir,
    :type  => :rvalue,
    :arity => 1
  ) do |args|
    raise ArgumentError, 'Expects a string' unless args.first.class == String

    username = args[0]

    case  username
      when 'root'
        return '/root'
      else
        return "/home/#{username}"
      end

  end
end
