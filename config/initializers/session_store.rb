if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_react-daily-planner", domain: "js-react-daily-planner.herokuapp.com"
else
    Rails.application.config.session_store :cookie_store, key: "_react-daily-planner"
end
