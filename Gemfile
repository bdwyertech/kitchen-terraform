# frozen_string_literal: true

ruby "~> 2.6"

source "https://rubygems.org/" do
  gemspec

  group :backend_ssh do
    gem "bcrypt_pbkdf", "~> 1.0"
    gem "rbnacl", "~> 4.0"
    gem "rbnacl-libsodium", "~> 1.0"
  end

  group :development do
    gem "gh", git: "https://github.com/travis-ci/gh", ref: "38fb339510ff9ae67cb08c6df7698f4c393f5a44"
  end

  group :test do
    gem "rake", "~> 12.3"
  end
end
