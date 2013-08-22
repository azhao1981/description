class ParseCommandOptions < Dun::Activity

  data_reader :args

  def call
    options = {}
    opt_parser = OptionParser.new do |opts|
      
      opts.on("-m", "--migrations DIR", "specify migration file dir") {|dir|
        options[:migration_dir] = dir
      }

      options[:port] = '9393'
      opts.on("-p", "--port PORT", "use PORT (default: 9393)") {|port|
        options[:port] = port
      }

      options[:server] = 'webrick'
      opts.on("-s", "--server SERVER", "server using SERVER") {|server|
        options[:server] = server
      }
      
    end

    opt_parser.parse! args

    options
    
  end
  
end
