# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  cadence    :integer
#  email      :string
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_accounts_on_cadence  (cadence)
#
class Account < ApplicationRecord
  has_many :orders
end
