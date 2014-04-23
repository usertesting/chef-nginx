#
# Cookbook Name:: nginx
# Attributes:: source
#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
#
# Copyright 2012-2013, Riot Games
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_attribute 'nginx::default'

default['nginx']['configure_flags']             = []
default['nginx']['source']['use_existing_user'] = false
default['nginx']['source']['modules']           = %w[
                                                   nginx::http_ssl_module
                                                   nginx::http_gzip_static_module
                                                  ]

# Checksum for the version 1.2.9 -- the current default for nginx.version attribute
default['nginx']['source']['checksum']  = '23b8ff4a76817090678f91b0efbfcef59a93492f6612dc8370c44c1f1ce1b626'

# Defaults for the below attrs are set in recipes/source.rb to pick up dynamic
# attr changes for nginx.version / nginx.source.version
default['nginx']['source']['version']   = nil
default['nginx']['source']['prefix']    = nil
default['nginx']['source']['conf_path'] = nil
default['nginx']['source']['sbin_path'] = nil
default['nginx']['source']['url']       = nil

