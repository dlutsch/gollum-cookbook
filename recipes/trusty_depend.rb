%w{ruby ruby-dev make zlib1g-dev libicu-dev g++}.each do |pkg|
 package "#{pkg}" do
  action :install
 end
end