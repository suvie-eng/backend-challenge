# == Schema Information
#
# Table name: orders
#
#  id             :integer          not null, primary key
#  total_cents    :integer          default(0), not null
#  total_currency :string           default("USD"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  account_id     :integer
#  delivery_id    :integer
#
# Indexes
#
#  index_orders_on_account_id   (account_id)
#  index_orders_on_delivery_id  (delivery_id)
#
class Order < ApplicationRecord
    monetize :total_cents

    belongs_to :account
    belongs_to :delivery
end
