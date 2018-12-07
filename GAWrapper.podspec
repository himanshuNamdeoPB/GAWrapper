
Pod::Spec.new do |s|

s.platform = :ios
#s.ios.deployment_target = '10.0'
s.name = "GAWrapper"
s.summary = "Google Analytics Wrapper"
s.requires_arc = true
s.version = "0.0.5"
s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Himanshu Namdeo" => "himanshu.namdeo@pb.com" }
s.homepage = "https://github.com/himanshuNamdeoPB/GAWrapper"
s.source = { :git => "https://github.com/himanshuNamdeoPB/GAWrapper.git",
:tag => "#{s.version}" }
#s.vendored_library = "GAWrapper/Libraries/libGoogleAnalytics.a"
s.frameworks = ['CoreData', 'SystemConfiguration']
s.libraries = ['z', 'sqlite3']
s.source_files = "GAWrapper", "GAWrapper/**/*.{h,m}"
s.swift_version = "4.1"

s.module_map = 'GAWrapper/GAWrapper.modulemap'
s.preserve_path = 'GAWrapper/GAWrapper.modulemap'
s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/GAWrapper' }
s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/GAWrapper' }

s.static_framework = true
end

