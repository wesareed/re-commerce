#**ReCommerce**

ReCommerce is an niche e-commerce app built in Ruby on Rails, with a focus on vintage and antique items. Using the Etsy model, users can create an account, create and manage listings, and purchase items.


 - User authentication using the
   [Devise](https://github.com/plataformatec/devise) gem.


 - Credit Payments using [Stripe](https://stripe.com/docs/api#intro)




 - Image Uploading using the   
   [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) gem



 - Cloud Storage using [Amazon S3](https://aws.amazon.com/s3/)




 - API key protection using   
   [Figaro](https://github.com/laserlemon/figaro)

> Specs

 * Ruby version
	 * [Ruby 2.2.3](https://www.ruby-lang.org/en/news/2015/08/18/ruby-2-2-3-released/)


>System dependencies

* Stripe API - [documentation](https://stripe.com/docs/api#intro)
		*[Test Credit Cards](https://stripe.com/docs/testing)
* Etsy API - [documentation](https://www.etsy.com/developers/documentation/getting_started/api_basics)
* Devise - [documentation](https://github.com/plataformatec/devise)
* Amazon S3 - [documentation](https://aws.amazon.com/s3/)
* Carrierwave - [documentation](https://github.com/carrierwaveuploader/carrierwave)
* Figaro -[documentation](https://github.com/laserlemon/figaro)
* ImageMagick - [documentation](http://cactuslab.com/imagemagick/)
* MiniMagick -  [documentation](https://github.com/minimagick/minimagick)

>Gems

`gem 'carrierwave'`

`gem "fog-aws"`

`gem "figaro"`

`gem "mini_magick"`

`gem 'devise'`

`gem 'stripe'`

`gem 'rails_12factor'`

`gem 'bootstrap-sass', '~> 3.3.6'`



> Database

* Postgres - [installation and documentation](http://postgresapp.com/)


>Deployment

* [Heroku](https://signup.heroku.com/?c=70130000001xDpdAAE&gclid=CNGi6pqsjM0CFQ4zaQodXAkLeQ)
* [Live App](https://stark-ravine-63295.herokuapp.com/listings)
