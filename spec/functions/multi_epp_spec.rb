require 'spec_helper'

describe 'multi_epp' do

  describe 'when no values are provided' do
    it 'should raise an ArgumentError' do
      is_expected.to run.with_params.and_raise_error(ArgumentError, /least one/)
    end
  end

  describe 'when no templates are found' do
    it 'should raise an ArgumentError' do
      is_expected.to run.with_params(
        ['fakefile.epp', 'anotherfakefile.epp']
      ).and_raise_error(ArgumentError, /No match.+anotherfakefile.epp/)
    end
  end

  # this is essentially testing the underlying function, which isn't great.
  describe 'when an invalid templates is found' do
    it 'should raise an ArgumentError' do
      is_expected.to run.with_params(
        ['single_match/invalid_name.epp']
      ).and_raise_error(ArgumentError, /Syntax error/)
    end
  end

  ################## Valid usages

  describe 'when passed a valid epp template' do
    it 'should expand it' do
      is_expected.to run.with_params(
        ['single_match/hello.epp']
      ).and_return(/Hello EPP world/)
    end
  end

  describe 'when passed a valid epp template and a value' do
    it 'should expand the epp template' do
      is_expected.to run.with_params(
        ['single_match/dynamic_name.epp'], 'name' => 'Dean'
      ).and_return(/Hello Dean/)
    end
  end

  describe 'when passed multi missing and a valid epp template' do
    it 'should skip the missing and expand the valid epp template' do
      is_expected.to run.with_params(
        ['notreal/doesntexist.epp', 'single_match/hello.epp', 'notreal/doesntexist2.epp']
      ).and_return(/Hello EPP world/)
    end
  end

end
