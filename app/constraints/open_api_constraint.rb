OPEN_API_PRODUCTS = %w[
  sms
  media
  number-insight
  conversation
  messages-olympus
  dispatch
  redact
  audit
  voice
  account/secret-management
  external-accounts
  application.v2
].freeze

class OpenApiConstraint
  def self.products
    { definition: Regexp.new(OPEN_API_PRODUCTS.join('|')) }
  end
end
