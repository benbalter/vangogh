# Vangogh

A Ruby Gem for abstracting numbers

## Usage

```Ruby
# Abstract numbers
Vangogh.abstract 1234
=> 1200

Vangogh.abstract 12345
=> 12000

# Abstract and abbreviate
Vangogh.abbreviate 1234
=> "1.2k"

Vangogh.abbreviate 12345
=> "12.3k"
```

You can also extend the numbers themselves, if you prefer:

```ruby
require 'vangogh/ext'

1234.abstract
=> 1200

12345.abbreviate
"12.3k"
```

Heck, you can even use it via command line:

```
$ vangogh abstract 1234
1200

$ vangogh abbreviate 12345
12.3k
```

## Abstracting CSVs

Vangogh isn't just a single-medium artist. If you pass Vangogh the path to a CSV, it'll process all numeric-looking cells, and pipe the resulting CSV to STDOUT.

```
$ vangogh abstract csv.csv >> output.csv
```

If you want to explicitly include/exclude certain fields, you can do so with the `fields` argument.

```
$ vangogh abstract csv.csv --fields foo bar >> output.csv
```

## Contributing

1. Fork it ( https://github.com/benbalter/vangogh/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
