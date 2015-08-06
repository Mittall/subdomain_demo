SubdomainFu.configure do |config|

  config.tld_sizes = { :development => 1,
                            :test => 0,
                            :production => 1 }

  # These are the subdomains that will be equivalent to no subdomain
  #config.mirrors = ["www"]

  # This is the "preferred mirror" if you would rather show this subdomain
  # in the URL than no subdomain at all.
  #config.preferred_mirror = "www"
end
