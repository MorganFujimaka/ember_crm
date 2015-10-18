EmberCLI.configure do |c|
  c.app :frontend, build_timeout: 50, path: Rails.root.join('frontend').to_s
end
