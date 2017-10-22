require "unirest"
require "resolv"
require "is_available/version"

module IsAvailable
  WHOIS_DOT_COM_LINK = "https://www.whois.com/whois/"
  
  def self.registered?(domain)
    Unirest.get(WHOIS_DOT_COM_LINK+domain).body.include?("Registrar")
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
