Pod::Spec.new do |s|
	s.name             = 'FlagPhoneNumber'
	s.version          = '0.8.4'
	s.summary          = 'A formatted phone number UITextField with country flag picker.'

	s.description      = <<-DESC
	FlagPhoneNumber is a phone number textfield that allows you to choose the country code thanks to a picker. It uses libPhoneNumber to format the number in the textfield according to country code.
	DESC

	s.homepage         = 'https://github.com/rursache/FlagPhoneNumber'
	s.license          = { :type => 'Apache License 2.0', :file => 'LICENSE' }
	s.author           = { 'Chaim Gross' => 'chaimg@sifradigital.com' }
	s.source           = { :git => 'https://github.com/chaimgross/FlagPhoneNumber.git', :tag => s.version.to_s }

	s.ios.deployment_target = '8.0'
	s.source_files = 'Sources/**/*.swift'
	s.resource = 'Sources/Resources/**/*.{json,xib,xcassets}'
	s.swift_version = '5.1'
	s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

	s.subspec 'libPhoneNumberiOS' do |ss|
		ss.source_files = 'Sources/libPhoneNumber/**/*.{m,h}'
	end
end
