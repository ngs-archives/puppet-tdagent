require 'spec_helper'

describe 'tdagent' do

  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it do
    should include_class 'homebrew'

    should contain_homebrew__formula 'td-agent'
    should contain_package('boxen/brews/td-agent')
  end

end
