class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :likes
  has_many :comments, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  # バリデーション
  validates :username, presence: true, length: { maximum: 30 }
  # validates :image, presence: true, numericality: true, inclusion: { in: 0..150 }
  validates :email,
            presence: true,
            uniqueness: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }

  ##  画像用
  mount_uploader :image, ImageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         # 外部API認証用に以下追加
         :omniauthable, omniauth_providers: %i[facebook twitter google_oauth2]

  ##  いいねが存在しているかをチェック
  def liked_by?(post_id)
    likes.where(post_id: post_id).exists?
  end

  # ゲストログイン用のアカウントを生成する sessions_controllerで呼び出し
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.username = 'ゲスト雀士'
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end

  # Twitter認証ログイン用
  # ユーザーの情報があれば探し、無ければ作成する
  def self.find_for_oauth(auth)
    user = User.find_by(uid: auth.uid, provider: auth.provider)

    user ||= User.create!(
      uid: auth.uid,
      provider: auth.provider,
      username: auth[:info][:name],
      remote_image_url: auth[:info][:image],
      email: User.dummy_email(auth),
      password: Devise.friendly_token[0, 20]
    )

    user
  end

  # ダミーのアドレスを用意
  def self.dummy_email(auth)
    "#{Time.now.strftime('%Y%m%d%H%M%S').to_i}-#{auth.uid}-#{auth.provider}@example.com"
  end
end
