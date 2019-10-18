require_relative "gem_version"

module PhilLocator
  # Returns the version of the currently loaded Active Job as a <tt>Gem::Version</tt>
  def self.version
    gem_version
  end
end
