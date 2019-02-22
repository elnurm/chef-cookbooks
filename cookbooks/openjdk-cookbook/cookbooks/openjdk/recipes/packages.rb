#Copyright [2019] [Elnur Mammadov]

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

# http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


#cookbook_file 'C:\openjdk.zip' do
#	source 'openjdk.zip'
#	not_if {::File.exists?('C:\openjdk.zip')}
#end

powershell_script 'downloading openjdk' do
	code <<-EOH
	wget -OutFile "C:\openjdk.zip" https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_windows-x64_bin.zip
	EOH
	not_if {::File.exists?('C:\openjdk.zip')}
end

windows_zipfile 'C:\Program Files (x86)\openjdk' do
	source 'C:\openjdk.zip'
	action :unzip
	not_if {::File.directory?('C:\Program Files (x86)\openjdk')}
end

windows_env 'PATH' do
	delim ";"
	value 'C:\Program Files (x86)\openjdk\jdk-11.0.2\bin'
	action :modify
end

windows_env 'JAVA_HOME' do
	value 'C:\Program Files (x86)\openjdk\jdk-11.0.2'
end



