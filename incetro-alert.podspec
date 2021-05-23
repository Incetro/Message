Pod::Spec.new do |spec|
    spec.name           = "incetro-alert"
    spec.version        = "1.1.0"
    spec.summary        = "A simple and useful wrapper for showing information messages"

    spec.homepage       = "https://github.com/incetro/Message.git"
    spec.license        = "MIT"
    spec.authors        = { "incetro" => "incetro@ya.ru" }
    spec.requires_arc   = true
    spec.swift_version = "5.0"

    spec.ios.deployment_target = "12.0"

    spec.source                 = { git: "https://github.com/incetro/Message.git", tag: "#{spec.version}"}
    spec.source_files           = "Message/Sources/**/*.{h,swift}"
end