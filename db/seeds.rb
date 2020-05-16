# データ追加テンプレート

# @user1 = User.create!(name:  "",
#                      email: "topituku@test.com",
#                      password:              "topituku",
#                      password_confirmation: "topituku",
#                      )

# @folder1 = @user1.folders.create!(title: "")

# posts1 = [
#   "",
#   "",
#   "",
#   "",
#   "",
# ]

# posts1.each do |elem|
#   @folder1.posts.create(content: elem)
# end

# トピつく 太郎

@user1 = User.create!(name:  "トピつく 太郎",
                     email: "topituku@test.com",
                     password:              "topituku",
                     password_confirmation: "topituku",
                     avatar: File.open("./app/assets/images/man_nomal.png")
                     )

@folder1 = @user1.folders.create!(title: "盛り上がる話題集")

posts1 = [
  "有名人で誰が好き？",
  "好きな歌手について語ってください",
  "キュンとする異性の仕草は？",
  "どこからが浮気？",
  "好きな映画とその理由は？",
  "好きな漫画はその理由は？",
  "座右の銘は？",
  "有名人で誰が好き？",
  "キュンとする異性の仕草は？",
  "どこからが浮気？",
  "好きな映画とその理由は？",
  "好きな漫画はその理由は？",
  "座右の銘は？",
  "行ってみたい国とその理由は？",
  "好きな漫画のキャラは？",
  "大人になったと思う瞬間",
  "子供だな、と思う瞬間",
  "好きなお笑い芸人は？",
  "自分の長所と短所は？",
  "幸せを実感するときは？",
  "今までで１番緊張したことは？",
  "嫌だと思う異性の特徴は？",
  "カラオケの十八番は？",
  "一番好きなテレビとその面白さは？",
  "願いが1つ叶うとしたら、どんな願いをする？",
  "宝くじで１０億当たったら何する？",
  "自分の好きな所",
  "初恋の相手のエピソード",
  "人生で一番後悔してることは？",
  "最初に異性のどこを見る？",          
  "浮気されたらどうする？",
  "右隣の人を褒める",
  "無人島に1つ持って行けるとしたら？",
  "最近欲しい家電は？",
  "世界中の誰とでも会えるなら誰に会いたい？",
  "友達とそうじゃない人との境は何？",
  "今までで一番恥ずかしかったこと",
  "異性と入れ替わったら何をしますか？",
  "世界中の誰とでも入れ替わることができるなら、誰と入れ替わる？",
  "子供の頃の夢は？",
  "友達になりたい人の特徴",
]

posts1.each do |elem|
  @folder1.posts.create(content: elem)
end

# 恋バナ次郎

@user2 = User.create!(name:  "恋バナ 次郎",
                     email: "topituku2@test.com",
                     password:              "topituku2",
                     password_confirmation: "topituku2",                
                     )

@folder2 = @user2.folders.create!(title: "恋バナ集")

posts2 = [
             "一番好きな曲について語ってください",
             "一番好きな歌手の魅力を語ってください",
             "どんな時に異性と付き合いたいと感じる？",
             "今まで付き合った人数は？"  ,
             "交際相手との年齢差は何歳までOK？",
             "何フェチ？",
             "浮気されたらどうする？",
             "キュンとする異性の仕草は？",
             "これまでの恋愛の失敗談は？",
             "理想のプロポーズは？",
             "前の彼氏（彼女）はどんな人だった？",
             "前の彼氏（彼女）とは、どうして別れた？",
             "憧れのデートは？",
             "嫌だと思う異性の特徴は？",
             "初恋の思い出は？",
             "初めてのキスのエピソードは？",
             "恋人、家族のいる人を好きになってしまったらどうする？",
             "どこからが浮気？",
             "好きになった異性へのアプローチ方法は？",
             "最初に異性のどこを見る？",
             "SとMどっち？",
]

posts2.each do |elem|
  @folder2.posts.create(content: elem)
end

# 暇つぶし三郎

@user3 = User.create!(name:  "暇つぶし 三郎",
                     email: "topituku3@test.com",
                     password:              "topituku3",
                     password_confirmation: "topituku3",
                     )

@folder3 = @user3.folders.create!(title: "暇つぶし話題集")

posts3 = [
  "何か１つ無人島に持っていけるならどうする？",
  "１億円あったらどうする？",
  "１ヶ月の休暇があったら何する？",
  "明日死ぬなら何する？",
  "最近見た夢",
]

posts3.each do |elem|
  @folder3.posts.create(content: elem)
end

# 初対面 四郎

@user4 = User.create!(name:  "初対面 四郎",
                     email: "topituku4@test.com",
                     password:              "topituku4",
                     password_confirmation: "topituku4",
                     )

@folder4 = @user4.folders.create!(title: "初対面での話題集")

posts4 = [
  "自分の性格を一言で",
  "最近パッピーだったこと",
  "家族構成",
  "恋人はいる？",
  "誕生日",
]

posts4.each do |elem|
  @folder1.posts.create(content: elem)
end

# 二択 吾郎

@user5 = User.create!(name:  "二択 吾郎",
                     email: "topituku5@test.com",
                     password:              "topituku5",
                     password_confirmation: "topituku5",
                     )

@folder5 = @user5.folders.create!(title: "究極の二択")

posts5 = [
  "年中夏 or 年中冬",
  "異性と付き合うなら 顔 or 性格",
  "スポーツの才能 or 芸術の才能",
  "死ぬ年齢を知る or 死に方を知る",
  "時間にルーズな恋人 or お金にルーズな恋人",
]

posts5.each do |elem|
  @folder5.posts.create(content: elem)
end


# 罰ゲーム 六郎

@user6 = User.create!(name:  "罰ゲーム 六郎",
                     email: "topituku6@test.com",
                     password:              "topituku6",
                     password_confirmation: "topituku6",
                     )

@folder6 = @user6.folders.create!(title: "罰ゲーム集")

posts6 = [
  "モノマネ",
  "一発ギャグ",
  "すべらない話",
  "セクシーポーズ",
  "尻文字",
  "変顔",
]

posts6.each do |elem|
  @folder6.posts.create(content: elem)
end


# 深井 七郎

@user7 = User.create!(name:  "深井 七郎",
                     email: "topituku7@test.com",
                     password:              "topituku7",
                     password_confirmation: "topituku7",
                     )

@folder7 = @user7.folders.create!(title: "深い話")

posts7 = [
  "座右の銘",
  "どんな人生の最後を迎えたい？",
  "お世話になった人は？",
  "１０代の自分への助言",
  "子供ができたらどう育てたい？",
]

posts7.each do |elem|
  @folder7.posts.create(content: elem)
end
