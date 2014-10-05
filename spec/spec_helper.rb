# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  #config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"

  # Configuring Facory Girl
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do

    # Additional factory_girl configuration
    #FactoryGirl.lint
    # http://stackoverflow.com/questions/13484808/save-and-open-page-not-working-with-capybara-2-0
    %x[bundle exec rake assets:precompile]
  end

  # In spec/spec_helper.rb or spec/support/name_it_as_you_wish.rb
  #
  # Automatically save and open the page
  # whenever an expectation is not met in a features spec
  config.after(:each) do
    if example.metadata[:type] == :feature and example.exception.present?
      save_and_open_page
    end
  end

  config.include(MailerMacros)
  config.include(UsuarioMacros)
  config.include(AvaliacaoMacros)

  # Using Capybara
  config.include Capybara::DSL

  config.before(:each) { reset_email }
end
