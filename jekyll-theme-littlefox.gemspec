Gem::Specification.new do |spec|
    spec.name          = "jekyll-theme-littlefox"
    spec.version       = "0.0.1"
    spec.authors       = ["Nikolay Kondratyev"]
    spec.email         = ["kondratyev.nv@gmail.com"]
  
    spec.summary       = "A simple theme for Jekyll based on whiteglass and minima"
    spec.homepage      = "https://github.com/kondratyev-nv/jekyll-theme-littlefox"
    spec.license       = "MIT"
  
    spec.metadata["plugin_type"] = "theme"
  
    spec.files = `git ls-files -z`.split("\x0").select do |f|
      f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
    end
  
    spec.add_runtime_dependency "jekyll", "~> 3.5"
  
    spec.add_development_dependency "bundler"
  end
