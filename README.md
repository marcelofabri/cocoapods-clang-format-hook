# cocoapods-clang-format-hook

A CocoaPods plugin to easily setup a git pre-commit hook to validate your code using [clang-format](http://clang.llvm.org/docs/ClangFormat.html).

It's recommended that you commit your `.clang-format` on the project root.

**WARNING:** This plugin replaces any previously configured pre-commit hook.

## Installing clang-format

    $ brew update && brew install clang-format
    
> You should install [Homebrew](http://brew.sh) if you haven't yet.
    
## Installation

    $ gem install cocoapods-clang-format-hook

## Usage

Just add `plugin 'cocoapods-clang-format-hook'` to your Podfile:
    
```ruby
source 'https://github.com/CocoaPods/Specs'
    
platform :ios, '8.0'
    
pod 'AFNetworking'

plugin 'cocoapods-clang-format-hook'
```

Once you run `pod install`, the hook will be installed.

## Thanks

This plugin was inspired by [this blog post](http://www.dx13.co.uk/articles/2015/04/03/Setting-up-git-clang-format.html) by Mike Rhodes.
