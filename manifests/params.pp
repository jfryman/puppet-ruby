# Class: ruby::params
#
# Description
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
class ruby::params {
  case $::operatingsystem {
    redhat,fedora,centos: {
      $ry_packages = ['ruby', 'rubygems', 'ruby-devel', 'ruby-irb', 'ruby-libs', 
                      'ruby-rdoc']
    }
  }
}
