#
# Be sure to run `pod lib lint DSTensorflow.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DSTensorflow'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DSTensorflow.'

  s.description      = <<-DESC
                          Demo for Tensorflow on iOS
                       DESC

  s.homepage         = 'https://github.com/walkdianzi/DSTensorflow'
  s.author           = { '398411773@qq.com' => 'zhengqidian@souche.com' }
  s.source           = { :git => 'https://github.com/walkdianzi/DSTensorflow.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'DSTensorflow/Classes/*'
  s.preserve_paths = 'DSTensorflow/SDK/**/*'
  s.frameworks = 'Accelerate'
  s.pod_target_xcconfig = {"HEADER_SEARCH_PATHS" => "$(inherited) '$(PODS_TARGET_SRCROOT)/DSTensorflow/SDK' '$(PODS_TARGET_SRCROOT)/DSTensorflow/SDK/tensorflow/contrib/makefile/downloads' '$(PODS_TARGET_SRCROOT)/DSTensorflow/SDK/tensorflow/contrib/makefile/downloads/eigen' '$(PODS_TARGET_SRCROOT)/DSTensorflow/SDK/tensorflow/contrib/makefile/downloads/protobuf/src' '$(PODS_TARGET_SRCROOT)/DSTensorflow/SDK/tensorflow/contrib/makefile/gen/proto' '$(PODS_TARGET_SRCROOT)/DSTensorflow/SDK/tensorflow/contrib/makefile/downloads/nsync/public'"}
  s.user_target_xcconfig = {"OTHER_LDFLAGS" => ['$(inherited)', '$(PODS_ROOT)/DSTensorflow/DSTensorflow/SDK/nsync.a', '-force_load', '$(PODS_ROOT)/DSTensorflow/DSTensorflow/SDK/libtensorflow-core.a', '$(PODS_ROOT)/DSTensorflow/DSTensorflow/SDK/libprotobuf-lite.a', '$(PODS_ROOT)/DSTensorflow/DSTensorflow/SDK/libprotobuf.a']}
  s.library = 'c++'
end
