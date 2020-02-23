class Order < ApplicationRecord
	enum pay_status:{クレジットカード: 0,銀行振込: 1}
    enum address_status:{ご自身の住所:0,登録済の住所:1,新しい登録先:2}
end
