include rvm

rvm::system_user { vagrant: }

rvm_system_ruby { 'ruby-2.1.2':
	  ensure => 'present',
	  default_use => true
}
