Pod::Spec.new do |s|

s.platform     = :ios, "7.0"
s.name = 'RepositoryWithResourcesExample'

s.version = '0.0.12'

s.summary = 'Componente de ejemplo de resources'

s.homepage = 'http://vanadis.es'

s.license = {

:type => 'MIT',
:file => 'LICENSE'

}

s.author = {
'Jorge' => 'jvelasco@vanadis.es'
}

s.source = {

:git => 'https://github.com/jvelascovanadis/RepositoryWithResourcesExample.git',
:tag => s.version.to_s

}

s.source_files = 'RepositoryWithResourcesExample/classes/*.{h,m}'

s.resource_bundles = {
'Vanadis' => ['RepositoryWithResourcesExample/assets/*']
}

s.frameworks = 'UIKit'
s.dependency 'AFNetworking', '~> 2.4.1'

#s.source_files = 'VanadisCocoaComponentsLogin/*.{m,h}'
#s.resources = '*.{storyboard}'
#s.resource_bundle = { 'StandardUtils' => [ '*.{png,storyboard,lproj}' ]}
#s.resource_bundle = { 'StandardUtils' => [ 'StandardUtilsBundle/**/*.{png,storyboard,lproj}' ] }
#s.resource_bundle = { 'VanadisCocoaComponentsLogin' => '*.storyboard' }
s.requires_arc = true

#s.dependency 'AFNetworking', '~> 1.0'

end
