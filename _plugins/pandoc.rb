require 'open3'
module Jekyll::Converters
  # Just return html5
  class Markdown
    def convert(content)
      flags  = @config['pandoc']['flags']
      output = ''
      Open3::popen3("pandoc -t html5 #{flags}") do |stdin, stdout, stderr|
          stdin.puts content
          stdin.close
          output = stdout.read.strip
      end
    output
    end
    def matches(ext)
      rgx = '(' + @config['markdown_ext'].gsub(',','|') +')'
      ext =~ Regexp.new(rgx, Regexp::IGNORECASE)
    end
    def output_ext(ext)
      ".html"
    end
  end
end
