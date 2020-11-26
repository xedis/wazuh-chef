name             'wazuh_filebeat'
maintainer       'Wazuh'
maintainer_email 'info@wazuh.com'
license          'Apache 2.0'
description      'Installs and configures filebeat'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w(redhat centos oracle).each do |el|
    supports el, '>= 6.0'
end
supports 'amazon', '>= 1.0'
supports 'fedora', '>= 22.0'
supports 'debian', '>= 7.0'
supports 'ubuntu', '>= 12.04'
supports 'suse', '>= 12.0'
supports 'opensuse', '>= 42.0'

depends 'apt'
depends 'yum'
depends 'zypper'

issues_url 'https://github.com/wazuh/wazuh-chef/issues' if respond_to?(:issues_url)
source_url 'https://github.com/wazuh/wazuh-chef' if respond_to?(:source_url)
chef_version '>= 12.0' if respond_to?(:chef_version)
