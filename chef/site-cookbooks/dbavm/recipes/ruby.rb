# ruby development headers are needed to install oily_png gem


package "ruby1.9.3" do
    action :install
end

package "ruby-dev" do
    action :install
end
