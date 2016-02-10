Pod::Spec.new do |s|
  s.name         = "JRTActivityIndicator"
  s.version      = "0.0.3"
  s.summary      = "JRTActivityIndicator is a flexible Activity Indicator"
  s.homepage     = "https://github.com/ifobos/JRTActivityIndicator"
  s.license      = "MIT"
  s.author       = { "ifobos" => "juancarlos.garcia.alfaro@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ifobos/JRTActivityIndicator.git", :tag => "0.0.3" }
  s.source_files = "JRTActivityIndicator/JRTActivityIndicator/PodFiles/*.{h,m}"
  s.resources    = "JRTActivityIndicator/JRTActivityIndicator/PodFiles/*.{png,bundle,xib,nib}"
  s.requires_arc = true
end
