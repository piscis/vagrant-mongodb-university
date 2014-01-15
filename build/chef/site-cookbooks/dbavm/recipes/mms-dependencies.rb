package "python-pymongo" do
    action :install
end

package "python-setuptools" do
    action :install
end

## We're not going to intall the mms agent here
## because this is a lesson during DBA course
## it only installs the dependencies for it
