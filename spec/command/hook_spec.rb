require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Hook do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ hook }).should.be.instance_of Command::Hook
      end
    end
  end
end

