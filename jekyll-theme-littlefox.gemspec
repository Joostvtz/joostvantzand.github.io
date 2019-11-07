Gem::Specification.new do |spec|
    spec.name          = "joostvtz.github.io"
    spec.version       = "0.0.1"
    spec.authors       = ["Joost van 't Zand"]
    spec.email         = ["joostvantzand@gmail.com"]

    spec.summary       = "A simple theme for Jekyll based on whiteglass and minima"
    spec.homepage      = "https://github.com/Joostvtz/joostvtz.github.io"
    spec.license       = "MIT"

    spec.metadata["plugin_type"] = "theme"

    spec.files = `git ls-files -z`.split("\x0").select do |f|
      f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
    end

    spec.add_runtime_dependency "jekyll", "~> 3.5"

    spec.add_development_dependency "bundler"
  end
