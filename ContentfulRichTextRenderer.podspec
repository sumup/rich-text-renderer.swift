#!/usr/bin/ruby

Pod::Spec.new do |spec|
  spec.name             = "ContentfulRichTextRenderer"
  spec.version          = "0.2.2"
  spec.summary          = "Swift library for rendering Contentful RichTextDocument."
  spec.homepage         = "https://github.com/contentful-labs/rich-text-renderer.swift"
  spec.social_media_url = 'https://twitter.com/contentful'
  spec.authors          = 'Contentful'

  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.source       = { :git => "https://github.com/contentful-labs/rich-text-renderer.swift.git", :tag => spec.version.to_s }

  spec.requires_arc = true
  
  spec.swift_version = "5.2"
  spec.ios.deployment_target = "10.0"

  spec.source_files = "Sources/RichTextRenderer/**/*.swift"

  spec.dependency 'Contentful', '~> 5.2.0'

  # Do not include file that has dependency on Alamofire
  spec.ios.exclude_files = 'Sources/RichTextRenderer/NodeRenderers/ResourceLinkBlock/ResourceLinkBlockImaveView.swift'

end

