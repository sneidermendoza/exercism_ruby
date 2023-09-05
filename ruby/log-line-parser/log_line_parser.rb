# Class that formats string
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    clean_string = @line.strip
    message_start = clean_string.index(": ") + 2
    message = clean_string[message_start..-1].strip
  end

  def log_level
    clean_line = @line.strip
    message_start = clean_line.index("[") + 1
    message_end = clean_line.index("]") + -1
    message = clean_line[message_start..message_end].downcase
  end

  def reformat
      "#{message()} (#{log_level()})"
  end
end
