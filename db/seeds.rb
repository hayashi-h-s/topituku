#user１人目

@user1 = User.create!(name:  "トピつく太郎",
                     email: "topituku@test.com",
                     password:              "topituku",
                     password_confirmation: "topituku",
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

#user２人目 恋バナ次郎

@user2 = User.create!(name:  "恋バナ次郎",
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

#user３人目罰ゲーム三郎

@user3 = User.create!(name:  "罰ゲーム三郎",
                     email: "topituku3@test.com",
                     password:              "topituku3",
                     password_confirmation: "topituku3",
                     )

# @folder3 = @user3.folders.create!(title: "罰ゲーム集")

# @folder4 = @user3.folders.create!(title: "深い話")

# @folder5 = @user3.folders.create!(title: "趣味の話")

# @folder6 = @user3.folders.create!(title: "学生時代の話")

# @folder7 = @user3.folders.create!(title: "初対面での話題")

# @folder8 = @user3.folders.create!(title: "究極の２択")

# @folder9 = @user3.folders.create!(title: "就活の面接で問われる話題")








