# Puppet multi_epp source function

The `multi_epp` puppet function allows you to list multiple
[Embedded Puppet (EPP)](https://docs.puppet.com/puppet/latest/lang_template_epp.html)
template files and use the first one that exists.

[![Build Status](https://travis-ci.org/deanwilson/puppet-multi_epp.svg?branch=master)](https://travis-ci.org/deanwilson/puppet-multi_epp)
[![Puppet Forge](https://img.shields.io/puppetforge/v/deanwilson/multi_epp.svg)](https://forge.puppetlabs.com/deanwilson/multi_epp)

The most common usage is to declare multiple files, most specific to
least specific, and the values that should be passed to the template for use
inside it.

    class ssh::config {

      file { '/etc/ssh/sshd_config':
        ensure  => present,
        mode    => '0600',
        content => multi_epp( [
                                "ssh/${::fqdn}.epp",
                                "ssh/${::domain}.epp",
                                'ssh/default_sshdconfig.epp',
                              ], {
                                    'port'          => 22222,
                                    'ListenAddress' => '0.0.0.0',
                              }),
      }

    }

It's worth noting that the template file names must be called as an array of
multiple files. While this is a little unwieldy it's required due to the way
Puppet handles repeated parameters and anything following them in an invocation.

## Supported versions

This function was written using the Puppet 4 function API and so will
not run on Puppet 3 unless the future parser is enabled.

## Installation

You can install this module from [PuppetForge](https://forge.puppet.com/):

    puppet module install deanwilson-multi_epp


### License

Apache 2.0 - [Dean Wilson](https://www.unixdaemon.net)

### See also

The function this was based on, [multitemplate](https://github.com/deanwilson/puppet-multitemplate),
provides the same functionality for ERB templates.
