Pod::Spec.new do |s|
  s.name         = "TKZoomSDK"
  s.version      = "7.1.5.37603"
  s.summary      = "CocoaPod for Zoom iOS Meeting SDK"
  s.description  = <<-DESC
                  CocoaPod wrapper for Zoom iOS Meeting SDK.
                   DESC
  s.homepage     = "https://github.com/tusharrk/TKZoomSDK"
  s.author       = { "Tushar Kalsara" => "tusharrkdev@gmail.com" }
  s.platform     = :ios, "13.0"

  s.source       = { :http => 'https://github.com/tusharrk/TKZoomSDK/releases/download/v7.1.5.37603/zoom-sdk-ios-7.1.5.37603.zip' }
  s.requires_arc = true

  s.vendored_frameworks = "**/lib/MobileRTC.xcframework", "**/lib/MobileRTCScreenShare.xcframework", "**/lib/zoomcml.xcframework"
  s.resource            = '**/lib/MobileRTCResources.bundle'

  s.libraries      = "sqlite3", "z.1.2.5", "c++"
  s.weak_framework = 'VideoToolbox', 'CoreMedia', 'CoreVideo', 'CoreGraphics', 'ReplayKit'

  # Zoom SDK 7.x only includes arm64 slices (device & arm64 simulator)
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 i386',
    'ARCHS[sdk=iphonesimulator*]'          => 'arm64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 i386',
    'ARCHS[sdk=iphonesimulator*]'          => 'arm64'
  }

  s.license      = { :type => 'MIT', :text => <<-LICENSE
 MIT License

 Copyright (c) 2026 Tushar Kalsara

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
    LICENSE
  }
end
