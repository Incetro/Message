Pod::Spec.new do |spec|
    spec.name           = "Message"
    spec.version        = "1.0.5"
    spec.summary        = "A simple and useful wrapper for showing information messages"

    spec.homepage       = "https://github.com/incetro/Message.git"
    spec.license        = "MIT"
    spec.authors        = { "incetro" => "incetro@ya.ru" }
    spec.requires_arc   = true

    spec.ios.deployment_target = "8.0"

    spec.source                 = { git: "https://github.com/incetro/Message.git", tag: "#{spec.version}"}
    spec.source_files           = "Message/Sources/**/*.{h,swift}"
end