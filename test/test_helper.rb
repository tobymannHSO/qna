ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  # Returns an example of the model missing the given attr
  # Initial intention is to easily test validations
  def model_missing_attr(model, valid_fixture, attr)
    sample_attrs = valid_fixture.attributes
    test_record = model.new(sample_attrs)
    test_record[attr.to_sym] = nil

    test_record
  end
end
