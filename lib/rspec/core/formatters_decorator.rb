RSpec::Core::Formatters.module_eval do
  autoload :LennyFormatter, 'rspec/core/formatters/lenny_formatter'
end

RSpec::Core::Formatters::Loader.class_eval do
  def initialize(reporter)
    @formatters = []
    @reporter = reporter
    self.default_formatter = 'lenny'
  end

  def built_in_formatter(key)
    case key.to_s
    when 'd', 'doc', 'documentation'
      RSpec::Core::Formatters::DocumentationFormatter
    when 'h', 'html'
      RSpec::Core::Formatters::HtmlFormatter
    when 'p', 'progress'
      RSpec::Core::Formatters::ProgressFormatter
    when 'j', 'json'
      RSpec::Core::Formatters::JsonFormatter
    when 'bisect'
      RSpec::Core::Formatters::BisectFormatter
    when 'l', 'lenny'
      RSpec::Core::Formatters::LennyFormatter
    end
  end
end
