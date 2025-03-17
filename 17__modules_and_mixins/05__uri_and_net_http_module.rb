require "uri" # provides classes to handle Uniform Resource Identifiers
require "net/http" # allows us to reach the Internet; also, contains "uri" module, so the first line can be omitted

URI.class #=> Module
Net.class #=> Module

uri = URI.parse("https://www.google.com")

Net::HTTP.get(uri) #=> "<!doctype html><html itemscope=\"\" itemtype=\"http://schema.org/WebPage\" lang=\"uk\"><head><meta content=\"text/html;..."
