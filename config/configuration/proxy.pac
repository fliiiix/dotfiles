function FindProxyForURL(url, host)
{
  // http://findproxyforurl.com/pac-file-introduction-2/
  // only use proxy when not in the same network
  // and ip or dns matches
  if (!isInNet(myIpAddress(), "192.168.17.0", "255.255.255.0"))
  {
    return "DIRECT";
    if(shExpMatch(host, "*.l33t.network*") || shExpMatch(host, "192.168.17.*"))
    {
      return "SOCKS 127.0.0.1:1080";
    }
  }

  // by default no proxy is used
  return "DIRECT";
}
