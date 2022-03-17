# Rails custom error pages

With `rails new` we got three static pages that are used for
* `public/404.html` Not found error `The page you were looking for doesn't
  exist. You may have mistyped the address or the page may have moved.`
* `public/422.html` Unprocessable Entity `The change you wanted was rejected.
  Maybe you tried to change something you didn't have access to.`
* `public/500.html` Internal Server Error `We're sorry, but something went
  wrong. If you are the application owner check the logs for more information.`

Since there are static, we can not easilly include our styles, header, footer.
Here we want to let Rails render those pages.

Let's generate sample home page
```
rails g controller pages home --no-helper
```

Add custom header and footer and some styles
and add routes to generate those errors.
```
# config/routes.rb
root "pages#home"
```

To see how error are rendering `public/404.html` you need to run in production
env:
```
rails assets:precompile
rails s -e production
```
Instead of running server in production mode you could change development
configuration to not consider requests local
```
# config/environments/development.rb
  # Show full error reports.
  config.consider_all_requests_local = false
```

and use your browser or curl command
```
curl -I localhost:3000/asd
curl -D - localhost:3000/pages/submit --data ""
curl -I localhost:3000/pages/error
```
