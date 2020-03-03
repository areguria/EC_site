class Order < ApplicationRecord
	enum pay_status:    {クレジットカード:0,銀行振込: 1}
    enum address_status:{ご自身の住所:0,登録済の住所:1,新しい登録先:2}
    enum status:{入金待ち:0,入金確認:1,製作中:2,発送準備中:3,発送済:4}
    belongs_to :customer
    has_many :order_records, dependent: :destroy

end
