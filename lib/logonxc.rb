require 'erubis'

class LogoNxc

  def self.wrap(nxc_block)
    tpl = File.expand_path(File.dirname(__FILE__) + "/../templates/logonxc.erb")
    template = Erubis::Eruby.new File.new(tpl).read
    template.result(:nxc_block => nxc_block)
  end

  # ok so this probably isn't the best way to write a language parser :)
  def self.parse text
    output = ""
    text.each_line do |line|
      case
      when line =~ /print\s+["']([^"']+)["']/
        output << "print(\"#{$1}\");\n"
      when line =~ /sleep\s+(\d+)/
        output << "wait(#{$1});\n"
      when line =~ /beep/
        output << "beep();\n"
      when line =~ /repeat\s+(\d+)\s+\[/
        output << "repeat(#{$1}) {\n"
      when line =~ /(?:right|rt)\s*(\d+)/
        output << "right(#{$1});\n"
      when line =~ /(?:left|lt)\s*(\d+)/
        output << "left(#{$1});\n"
      when line =~ /(?:forward|fd)\s*(\d+)/
        output << "forward(#{$1});\n"
      when line =~ /(?:back|bk)\s*(\d+)/
        output << "back(#{$1});\n"
      when line =~ /\]/
        output << "}\n"
      end
    end
    output
  end

  def self.nxc(logo)
    wrap(parse(logo))
  end

end