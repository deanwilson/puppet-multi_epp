require 'spec_helper'

describe 'multi_epp' do

  describe 'when no values are provided' do
    it 'should raise an ArgumentError' do
      is_expected.to run.with_params.and_raise_error(ArgumentError, /least one/)
    end
  end

end
