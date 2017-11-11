require "net/http"
require "resolv"
require "is_available/version"

module IsAvailable
  WHOIS_DOT_COM_LINK = "https://www.whois.com/whois/"
  
  def self.registered?(domain)
    if ENV["os"] == "Windows_NT"
      if !ENV["SSL_CERT_FILE"]
        raise RuntimeError, "Environment variable SSL_CERT_FILE not set."
      end
    end
    Net::HTTP.get_response(URI.parse(WHOIS_DOT_COM_LINK+domain)).body.include?("Registrar")
  end

  def self.resolvable?(domain)
    return true if Resolv.getaddress domain
  rescue Resolv::ResolvError
    return false
  end

  def self.available?(domain)
    !IsAvailable.registered?(domain)
  end
end
