class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    before_save { email.downcase! } #大文字で入力されたpwwを保存前に小文字に変換する
    has_secure_password #ハッシュ化の実装
end
