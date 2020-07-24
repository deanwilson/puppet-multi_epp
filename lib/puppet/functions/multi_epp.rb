Puppet::Functions.create_function(:multi_epp, Puppet::Functions::InternalFunction) do
  dispatch :no_param do
  end

  dispatch :epp_templates do
    scope_param
    param 'Array[String]', :templates
    optional_param 'Hash[Pattern[/^\w+$/], Any]', :parameters
  end

  def no_param
    raise ArgumentError, "#{self.class.name}(): must be provided at least one epp template"
  end

  def epp_templates(scope, templates, params = {})
    template_path = nil
    contents = nil
    env_name = scope.compiler.environment

    templates.each do |template_file|
      next unless (template_path = Puppet::Parser::Files.find_template(template_file, env_name))

      contents = call_function('epp', template_path, params)
      break # exit the loop as soon as we match a file
    end

    if contents.nil?
      files = templates.join(', ')
      raise ArgumentError, "#{self.class.name}(): No match found for #{files}"
    end

    contents
  end
end
