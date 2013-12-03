#
# Cookbook Name:: windows-guard-test
# Recipe:: default
#
# Copyright 2013, Opscode, Inc.
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

%w{zero.bat one.bat}.each do |t|
  cookbook_file "c:\\#{t}"
end

log "Testing only_if with zero" do
  only_if "c:\\zero.bat"
end

log "Testing only_if with one" do
  only_if "c:\\one.bat"
end

log "Testing not_if with zero" do
  not_if "c:\\zero.bat"
end

log "Testing not_if with one" do
  not_if "c:\\one.bat"
end
