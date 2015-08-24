# 3rd Party Retargeter

Retargeting is shown to be one of the best ways to increase your ad-spend ROI.

Facebook retargeting is great ; but by default you cannot create a retargeting audience when promoting a 3rd party product (Amazon listings ; Teespring campaign ; eBay auction ; affiliate landing pages etc.)

The reason you cannot is because you need to put your "tracking pixel javascript" on the page, which you can only do on your own sites.

3rd Party Retargeter allows you to easily create redirect URLs that will execute the tracking pixel javascript and then redirect the user to the 3rd party page. Hence building your retarget audience while promoting a 3rd party product.

### Setup

This is open source software that you can easily run on your own server. We recommend [Vultr cloud hosting](http://www.vultr.com/?ref=6844420).

* Ruby version
> 2.2.3

* System dependencies (Make sure all of these are installed)
> Postgres (test by running `psql`)

* Configuration
> Install RVM `\curl -sSL https://get.rvm.io | bash -s stable`
>
> Install ruby 2.2.3 `rvm install 2.2.3`
>
> Create a new Postgres super user:
>
> `createuser -P -s -e third-party-retargeter` (keep password blank)
>
> clone repo `git@github.com:open-source-affiliate/3rd-party-retargeter.git`
>
> cd into root of project and type `bundle install`
>
> run `bundle update` if necessary to update your gems
>
> `cp .env.example .env` to setup your local development environment variables

* Database creation
> `rake db:create`

* Database initialization
> `rake db:migrate`
>
> `rake db:migrate RAILS_ENV=test`
>
> `rake db:seed`

### Deployment

[Vultr cloud hosting](http://www.vultr.com/?ref=6844420) is recommended for deployment.

### Affiliate Disclosure

Being free open source software, 3rd Party Retargeter makes money through the use of affiliate links for hosting providers. If you click on one of our hosting provider links and sign up for a hosting plan we get a small percentage reward from the hosting provider.
