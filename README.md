# HTTPAutorec

HTTPAutorec is a handy tool to add transparent disk caching of HTTP response to your script. All you have to do is adding `require 'http_autorec'`.

## Installation

Install it yourself as:

    $ gem install http_autorec

Or add this line to your application's Gemfile:

    gem 'http_autorec'

And then execute:

    $ bundle

## Usage

Add `require 'http_autorec'`, or `ruby -r http_autorec yourscript.rb`.

Cache is put on `./http_autorec_cache` by default. You can set the place of cache by `HTTP_AUTOREC_DIR=http_cache ruby -r http_autorec yourscript`.

## How it works

HTTPAutorec uses [VCR](https://github.com/vcr/vcr) and [WebMock](https://github.com/bblimke/webmock). VCR records and replays HTTP responses, which are intercepted by WebMock.

WebMock supports a lot of HTTP libraries ([check out webmock's readme](https://github.com/bblimke/webmock#readme)), and so does HTTPAutorec.

## Contributing

1. Fork it ( https://github.com/vzvu3k6k/http_autorec/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Related rubygems

* [open-uri-cached](https://rubygems.org/gems/open-uri-cached) - <q cite="https://rubygems.org/gems/open-uri-cached">OpenURI with transparent disk caching</q> for each process; ([README](https://github.com/tigris/open-uri-cached#readme))
* [http-dump](https://rubygems.org/gems/http-dump) - Dump http request by WebMock; ([README](https://github.com/hotchpotch/http-dump#readme))
