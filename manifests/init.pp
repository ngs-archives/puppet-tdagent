# Install td-agent
class tdagent {
  include homebrew

  homebrew::formula { 'td-agent':
    before => Package['boxen/brews/td-agent'],
  }

  package { 'boxen/brews/td-agent':
    ensure => installed,
  }
}
