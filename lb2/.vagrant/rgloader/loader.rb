# This file loads the proper rgloader/loader.rb file that comes packaged
# with Vagrant so that encoded files can properly run with Vagrant.
# https://github.com/IT-Anthony/docker-swarm-cluster-vagrant/blob/master/master-swarm/.vagrant/rgloader/loader.rb
if ENV["VAGRANT_INSTALLER_EMBEDDED_DIR"]
  require File.expand_path(
    "rgloader/loader", ENV["VAGRANT_INSTALLER_EMBEDDED_DIR"])
else
  raise "Encoded files can't be read outside of the Vagrant installer."
end
