Puppet::Functions.create_function(:multi_epp, Puppet::Functions::InternalFunction) do

  dispatch :no_param do
  end

  def no_param
    raise ArgumentError, "#{self.class.name}(): must be provided at least one epp template"
  end

end
