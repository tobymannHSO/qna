module StatusAttribute
  extend ActiveSupport::Concern

  VALID_STATUSES = %w[public private archived].freeze

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
    scope :active, -> { where.not(status: 'archived') }
    scope :open, -> { where(status: 'public') }
  end

  def archived?
    status == 'archived'
  end
end
