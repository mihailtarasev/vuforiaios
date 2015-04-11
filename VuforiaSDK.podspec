Pod::Spec.new do |s|
  s.name         = "VuforiaSDK"
  s.version      = "4.0.103"
  s.summary      = "Vuforia SDK"
  
  s.source       = { :http => 'https://github.com/mihailtarasev/vuforiaios/raw/master/vuforiasdk40103.zip' }
  s.platform     = :ios

  s.source_files = 'vuforiasdk40103/include/QCAR/*.h'
  s.vendored_libraries = 'vuforiasdk40103/lib/arm/libVuforia.a'
  s.preserve_paths = 'vuforiasdk40103/lib/arm/libVuforia.a'
  s.header_dir = 'QCAR'

  s.frameworks = 'AVFoundation', 'CoreVideo', 'CoreMedia', 'QuartzCore', 'OpenGLES', 'CoreMotion', 'MediaPlayer', 'AudioToolbox', 'SystemConfiguration', 'CoreText'

  s.xcconfig  =  { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/VuforiaSDK/vuforiasdk40103/include"',
                   'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/VuforiaSDK/vuforiasdk40103/lib/arm"',
                   'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/VuforiaSDK/vuforiasdk40103/lib/arm"'
                    }
end
  
