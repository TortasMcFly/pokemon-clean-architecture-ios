# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'pokemon' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for pokemon
  source 'https://github.com/CocoaPods/Specs.git'
  platform :ios, '9.0' # or platform :osx, '10.10' if your target is OS X.
  use_frameworks!

  pod 'Swinject', '2.8.3'
  pod 'SwinjectAutoregistration', '2.8.3'

  pod "Resolver"

  target 'pokemonTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'pokemonUITests' do
    # Pods for testing
  end

end
