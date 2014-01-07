Pod::Spec.new do |s|
  s.name      = 'PBEmitters'
  s.version   = '0.0.2'
  s.summary   = 'PBEmitters is a different approach to using iOS table and collection views.'
  s.homepage  = 'https://github.com/nickbolton/PBEmitters'
  s.license      = 'MIT'
  s.author    = { 'nickbolton' => 'nick@deucent.com' }             
  s.source    = { :git => 'https://github.com/nickbolton/PBEmitters.git',
                  :branch => 'master'}

  s.ios.deployment_target = '7.0'
  s.requires_arc = true
  s.source_files  = '*.{h,m}', 'CollectionView/**/*.{h,m}', 'ListView/**/*.{h,m}'
  s.resources = 'ListView/PBListCell.xib', 'ListView/PBTitleCell.xib'

  s.ios.dependency 'PBFoundation', '~> 0.1'
  s.ios.frameworks = 'UIKit'

  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
#import "PBEmitters.h"
#import "PBFoundation.h"
#endif
  EOS
end
