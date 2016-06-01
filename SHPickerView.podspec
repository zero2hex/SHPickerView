Pod::Spec.new do |s|
  s.name        = "SHPickerView"
  s.version     = "0.1.1"
  s.summary     = "PickerView controller include UIToolbar and UIPickerView"
  s.homepage    = "https://github.com/zero2hex/SHPickerView"
  s.license     = { :type => "MIT" }
  s.authors     = { "SeungHyun Lee" => "zero2hex@gmail.com" }

  s.requires_arc = true
  s.source   = { :git => "https://github.com/zero2hex/SHPickerView.git", :tag => s.version }
  s.source_files = "Source/*.swift"

  s.frameworks = 'UIKit'
end
