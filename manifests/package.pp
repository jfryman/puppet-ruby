# Class: ruby::package
#
# Description
#   This class is designed to install latest Ruby and Rubygem packages
#
# Parameters:
#   This class takes no parameters
#
# Actions:
#   This class installs RPMs for RHEL systems.
#
# Requires:
#   This module has no requirements.   
#
# Sample Usage:
#   This method should not be called directly.
#
class ruby::package {
  $packages = ['ruby', 'rubygems', 'ruby-devel', 'ruby-irb', 'ruby-libs', 
               'ruby-rdoc']
  
  @package { $ruby::params::ry_packages:
    ensure => 'present', 
    tag    => 'ruby-packages', 
  }
  Package<| tag == 'ruby-packages' |>
}
