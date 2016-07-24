name             "ossec-ng"
maintainer       "Eric Renfro"
maintainer_email "psi-jack@linux-help.org"
license          "GPLv2"
description      "Installs/Configures ossec"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.2.1"
issues_url       "http://git.linux-help.org/Linux-Help/ossec-ng/issues"
source_url       "http://git.linux-help.org/Linux-Help/ossec-ng"

recipe 'ossec-ng::default', 'Installs the neccessary repositories to install OSSEC'
recipe 'ossec-ng::server', 'Installs OSSEC for use as a server'
recipe 'ossec-ng::agent', 'Installs OSSEC for use as an agent'

%w(
  debian
  ubuntu
  centos
  redhat
  scientific
  amazon
  oracle
).each do |os|
  supports os
end

depends 'yum-epel'
depends 'yum-atomic', '~> 0.1.2'
depends 'apt-atomic', '~> 0.1.3'

suggests 'postfix'
suggests 'selinux_policy'

