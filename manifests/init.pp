# Class: ruby
#
# Description
#   This class installs Ruby and Rubygems.
#
# Parameters:
#   This class takes no parameters
#   
# Actions:
#   Install Ruby
#
# Requires:
#   - Class[stdlib]. This is Puppet Labs standard library to include additional methods for use within Puppet. [https://github.com/puppetlabs/puppetlabs-stdlib]
#
# Sample Usage:
#   include ruby
#
class ruby {
  include stdlib
  include ruby::params
  
  anchor { 'ruby::begin': }
  -> class { 'ruby::package': }
  -> anchor { 'ruby::end': }
}
