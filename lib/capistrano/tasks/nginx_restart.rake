
desc "nginx"
task :nginx_restart do
    on roles(:app) do |h|

      if test("sudo service nginx restart")
      info "Nginx Restart Successful #{h}"
    else
      error "Nginx Restart Failed #{h}"
    end
  end
end
