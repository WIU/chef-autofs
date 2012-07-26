#
# Cookbook Name:: autofs
# Attributes:: default
#
# Copyright ModCloth, Inc.
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

# General attributes

case platform
when "solaris2", "smartos"
  default[:autofs][:auto_master_path] = "/etc/auto_master"
else
  default[:autofs][:auto_master_path] = "/etc/auto.master"
end

default[:autofs][:auto_master_entries] = []
default[:autofs][:maps] = []
default[:autofs][:external_files] = {}
