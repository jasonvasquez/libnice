Pod::Spec.new do |s|
  s.name         = "libnice"
  s.version      = "0.1.13"
  s.summary      = "Libnice is an implementation of the IETF's Interactive Connectivity Establishment (ICE) standard (RFC 5245) and the Session Traversal Utilities for NAT (STUN) standard (RFC 5389)."
  s.homepage     = "http://nice.freedesktop.org/wiki/"
  s.author       = 'nice.freedesktop.org'
  s.source       = { :git => "https://github.com/libnice/libnice.git", :tag => "#{s.version}" }
  s.platform     = :ios, '7.0'
  s.description  = <<-DESC
Libnice is an implementation of the IETF's Interactive Connectivity Establishment (ICE) standard (RFC 5245) and the Session Traversal Utilities for NAT (STUN) standard (RFC 5389).

It provides a GLib-based library, libnice and a Glib-free library, libstun as well as GStreamer elements.

ICE is useful for applications that want to establish peer-to-peer UDP data streams. It automates the process of traversing NATs and provides security against some attacks. It also allows applications to create reliable streams using a TCP over UDP layer.

Existing standards that use ICE include Session Initiation Protocol (SIP) and XMPP Jingle.
                    DESC
  s.license      = {
     :type => 'MPL+LGPL'
  }

  s.source_files = [
    '**/*.{c,h}'
  ]

  s.private_header_files = [
    '**/*-priv.h'
  ]

  s.exclude_files = [
    'examples',
    'random/test.c',
    'stun/tests',
    'stun/tools',
    'tests',
    'win32'
  ]

  # s.xcconfig            = {'HEADER_SEARCH_PATHS'          => header_search_paths.join(' '),
  #                          'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1'}

  s.requires_arc        = false
end
