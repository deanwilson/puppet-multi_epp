Puppet::Functions.create_function(:multi_epp, Puppet::Functions::InternalFunction) do

  dispatch :no_param do
  end

  dispatch :templates_only do
    scope_param
    param 'Array[String]', :templates
  end


  def no_param
    raise ArgumentError, "#{self.class.name}(): must be provided at least one epp template"
  end

  def templates_only(scope, templates)

    template_path = nil
    contents = nil
    env_name = scope.compiler.environment

    templates.each do |template_file|
      if template_path = Puppet::Parser::Files.find_template(template_file, env_name)
        contents = call_function('epp', template_path, {})

        break # exit the loop as soon as we match a file
      end
    end

    if contents.nil?
      files = templates.join(', ')
      raise ArgumentError, "#{self.class.name}(): No match found for #{files}"
    end

    contents
  end

end
