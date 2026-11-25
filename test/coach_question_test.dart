import 'package:flutter_test/flutter_test.dart';
import 'package:nalelu/lang_data/coach/coach_questions.dart';
import 'package:nalelu/services/furigana_service.dart';

void main() {
  group('CoachQuestion', () {
    test('getCoachQuestionBank correctly parses', () async {
      final dataJson = '''
[
{"question":"(友達:ともだち)は(学生:がくせい)です。(私:わたし)___(学生:がくせい)です。","tested-abilities":["particles","self-introduction"],"correct-answer-index":0,"choices":["も","を","に","で","と"]},
{"question":"これは___ですか。それは(本:ほん)です。","tested-abilities":["asking-questions","question-words"],"correct-answer-index":2,"choices":["だれ","どこ","なん","いつ","いくら"]},
{"question":"(毎朝:まいあさ)(七時:しちじ)___(起:お)きます。","tested-abilities":["time-expressions","particles","daily-routines"],"correct-answer-index":1,"choices":["を","に","で","から","へ"]},
{"question":"(日本語:にほんご)___(勉強:べんきょう)します。","tested-abilities":["object-particle","study-verbs"],"correct-answer-index":2,"choices":["が","に","を","へ","と"]},
{"question":"(大阪:おおさか)___(来:き)ました。どこからきましたか。","tested-abilities":["asking-origin","particles"],"correct-answer-index":3,"choices":["を","に","へ","から","で"]},
{"question":"(月曜日:げつようび)の(次:つぎ)の(日:ひ)は___です。","tested-abilities":["days-of-week","basic-vocabulary"],"correct-answer-index":1,"choices":["(月曜日:げつようび)","(火曜日:かようび)","(水曜日:すいようび)","(木曜日:もくようび)","(金曜日:きんようび)"]},
{"question":"(何歳:なんさい)ですか。(私:わたし)は___です。","tested-abilities":["stating-age","asking-questions"],"correct-answer-index":2,"choices":["(二十三時:にじゅうさんじ)","(二十九円:にじゅうきゅうえん)","(三十四歳:さんじゅうよんさい)","(三十四時:さんじゅうよんじ)","(学生:がくせい)"]},
{"question":"(私:わたし)のたんじょうびは(五月三日:ごがつみっか)___。","tested-abilities":["dates","copula"],"correct-answer-index":0,"choices":["です","ます","でした","ません","では"]},
{"question":"コーヒー___(飲:の)みます。","tested-abilities":["object-particle","food-and-drink"],"correct-answer-index":1,"choices":["が","を","に","で","から"]},
{"question":"(明日:あした)(学校:がっこう)へ___。","tested-abilities":["movement-verbs","future-time"],"correct-answer-index":4,"choices":["(食:た)べます","(寝:ね)ます","(見:み)ます","(聞:き)きます","(行:い)きます"]},
{"question":"この(本:ほん)は___のですか。(田中:たなか)さんのです。","tested-abilities":["possessives","asking-questions"],"correct-answer-index":3,"choices":["どれ","どこ","いつ","だれ","なに"]},
{"question":"(日本語:にほんご)と(英語:えいご)___(話:はな)します。","tested-abilities":["listing-items","particles","languages"],"correct-answer-index":1,"choices":["を","が","で","へ","まで"]},
{"question":"(部屋:へや)に(猫:ねこ)が___。","tested-abilities":["existence-verbs","basic-sentences"],"correct-answer-index":2,"choices":["おいしい","(大:おお)きい","います","あります","(飲:の)みます"]},
{"question":"(今:いま)、(外:そと)は(三十度:さんじゅうど)です。(今日:きょう)はとても___です。","tested-abilities":["i-adjectives","weather"],"correct-answer-index":0,"choices":["あつい","あつく","あつかった","あつさ","あつくて"]},
{"question":"(私:わたし)はりんごがすきです。(毎日:まいにち)りんごを___(食:た)べます。","tested-abilities":["adverbs","basic-vocabulary"],"correct-answer-index":4,"choices":["どこ","いつ","だれ","なに","よく"]},
{"question":"(本:ほん)は(机:つくえ)より(高:たか)い ところにあります。(机:つくえ)の___にあります。","tested-abilities":["location-expressions","particles"],"correct-answer-index":1,"choices":["(下:した)","(上:うえ)","(前:まえ)","(中:なか)","(横:よこ)"]},
{"question":"(私:わたし)は(学生:がくせい)です。(先生:せんせい)では___。","tested-abilities":["negative-copula","basic-grammar"],"correct-answer-index":3,"choices":["です","ました","でした","ありません","なります"]},
{"question":"あなたの(名前:なまえ)は___ですか。たろうです。","tested-abilities":["question-words","self-introduction"],"correct-answer-index":2,"choices":["どこ","だれ","なん","いつ","いくつ"]},
{"question":"(昨日:きのう)(映画:えいが)を___。","tested-abilities":["past-tense","verbs","time-expressions"],"correct-answer-index":0,"choices":["(見:み)ました","(見:み)ます","(見:み)ません","(見:み)たい","(見:み)る"]},
{"question":"(日曜日:にちようび)に(友達:ともだち)に___。(一緒:いっしょ)に(公園:こうえん)へ(行:い)きます。","tested-abilities":["social-activities","verb-selection"],"correct-answer-index":4,"choices":["(寝:ね)ます","(飲:の)みます","(買:か)います","(作:つく)ります","(会:あ)います"]},

{"question":"(図書館:としょかん)___(本:ほん)を(読:よ)みます。","tested-abilities":["particles","location-expressions"],"correct-answer-index":2,"choices":["に","を","で","へ","から"]},
{"question":"(毎朝:まいあさ)(七時:しちじ)に(家:うち)___(出:で)ます。","tested-abilities":["particles","daily-routines"],"correct-answer-index":0,"choices":["を","に","で","へ","と"]},
{"question":"(私:わたし)は(大阪:おおさか)___(住:す)んでいます。","tested-abilities":["particles","location-vocabulary"],"correct-answer-index":1,"choices":["で","に","を","へ","から"]},
{"question":"(部屋:へや)に(犬:いぬ)___います。","tested-abilities":["existence-verbs","particles"],"correct-answer-index":3,"choices":["を","に","で","が","へ"]},
{"question":"(友達:ともだち)___(駅:えき)まで(歩:ある)きます。","tested-abilities":["particles","social-activities"],"correct-answer-index":4,"choices":["を","に","で","へ","と"]},
{"question":"(午後:ごご)(三時:さんじ)___(午後:ごご)(四時:よじ)まで(勉強:べんきょう)します。","tested-abilities":["time-expressions","particles"],"correct-answer-index":2,"choices":["まで","に","から","で","を"]},
{"question":"(午前:ごぜん)(九時:くじ)から(午後:ごご)(五時:ごじ)___(働:はたら)きます。","tested-abilities":["time-expressions","particles"],"correct-answer-index":0,"choices":["まで","から","に","で","へ"]},
{"question":"(兄:あに)は(私:わたし)___せが(高:たか)いです。","tested-abilities":["comparison","i-adjectives"],"correct-answer-index":0,"choices":["より","と","が","を","に"]},
{"question":"クラスで(田中:たなか)さんが___せが(高:たか)いです。","tested-abilities":["comparison","basic-vocabulary"],"correct-answer-index":3,"choices":["もっと","とても","すこし","いちばん","あまり"]},
{"question":"このりんごはあのりんご___(大:おお)きいです。","tested-abilities":["comparison","i-adjectives"],"correct-answer-index":2,"choices":["まで","から","より","だけ","しか"]},

{"question":"この(中:なか)で___りんごがあまいです。","tested-abilities":["comparison","i-adjectives"],"correct-answer-index":4,"choices":["もっと","とても","すこし","あまり","いちばん"]},
{"question":"(毎日:まいにち)(朝:あさ)ごはんを___。","tested-abilities":["verbs","daily-routines"],"correct-answer-index":1,"choices":["(食:た)べました","(食:た)べます","(食:た)べませんでした","(食:た)べません","(食:た)べたい"]},
{"question":"(昨日:きのう)(公園:こうえん)で(友達:ともだち)と___。","tested-abilities":["past-tense","verbs"],"correct-answer-index":3,"choices":["(遊:あそ)びます","(遊:あそ)びません","(遊:あそ)びたい","(遊:あそ)びました","(遊:あそ)びませんでした"]},
{"question":"(明日:あした)(雨:あめ)が___。","tested-abilities":["future-time","weather"],"correct-answer-index":0,"choices":["(降:ふ)ります","(降:ふ)りました","(降:ふ)っていました","(降:ふ)りませんでした","(降:ふ)りたいです"]},
{"question":"(今:いま)(水:みず)を___います。","tested-abilities":["verbs","basic-grammar"],"correct-answer-index":2,"choices":["(飲:の)みます","(飲:の)みたい","(飲:の)んで","(飲:の)みました","(飲:の)まない"]},
{"question":"(窓:まど)を___ください。(寒:さむ)いですから。","tested-abilities":["requests","verbs"],"correct-answer-index":4,"choices":["(開:あ)けて","(開:あ)ける","(開:あ)けた","(開:あ)けない","(閉:し)めて"]},
{"question":"(部屋:へや)が(暗:くら)いです。(電気:でんき)を___ください。","tested-abilities":["requests","daily-life"],"correct-answer-index":1,"choices":["(消:け)して","つけて","あけて","しめて","(消:け)していました"]},
{"question":"ここで(写真:しゃしん)をとっても___ですか。はい、いいですよ。","tested-abilities":["asking-permission","basic-grammar"],"correct-answer-index":0,"choices":["いい","だめ","いけない","ください","しましょう"]},
{"question":"ここでたばこを___はいけません。","tested-abilities":["prohibition","basic-grammar"],"correct-answer-index":1,"choices":["(吸:す)います","(吸:す)って","(吸:す)った","(吸:す)っては","(吸:す)わない"]},
{"question":"(毎日:まいにち)(運動:うんどう)を___います。","tested-abilities":["verbs","daily-routines"],"correct-answer-index":2,"choices":["する","します","して","した","しない"]},

{"question":"(晩:ばん)ごはんを___から、テレビを(見:み)ます。","tested-abilities":["sequence-expressions","verbs"],"correct-answer-index":4,"choices":["(食:た)べます","(食:た)べる","(食:た)べた","(食:た)べない","(食:た)べて"]},
{"question":"(一緒:いっしょ)に(公園:こうえん)へ___ませんか。","tested-abilities":["inviting","movement-verbs"],"correct-answer-index":1,"choices":["いきます","いき","いった","いって","いかない"]},
{"question":"では、ここでやすみ___。","tested-abilities":["volitional-form","daily-life"],"correct-answer-index":3,"choices":["ます","ました","ません","ましょう","たいです"]},
{"question":"この(本:ほん)を(読:よ)んで___。","tested-abilities":["requests","verbs"],"correct-answer-index":0,"choices":["ください","ちょうだい","あります","です","でした"]},
{"question":"(本:ほん)を(借:か)りても___ですか。はい、どうぞ。","tested-abilities":["asking-permission","basic-grammar"],"correct-answer-index":2,"choices":["だめ","いけない","いい","ください","しましょう"]},
{"question":"(昨日:きのう)は___です。","tested-abilities":["i-adjectives","past-tense"],"correct-answer-index":4,"choices":["(暑:あつ)い","(暑:あつ)く","(暑:あつ)さ","(暑:あつ)くて","(暑:あつ)かった"]},
{"question":"この(町:まち)はしずか___。","tested-abilities":["na-adjectives","basic-grammar"],"correct-answer-index":1,"choices":["な","です","く","かった","に"]},
{"question":"このりんごは___です。","tested-abilities":["i-adjectives","basic-vocabulary"],"correct-answer-index":0,"choices":["(甘:あま)い","(甘:あま)く","(甘:あま)な","(甘:あま)さ","(甘:あま)かった"]},
{"question":"このふゆはさむ___ありません。","tested-abilities":["i-adjectives","negative-copula"],"correct-answer-index":2,"choices":["い","かった","く","くて","さ"]},
{"question":"このへやはきれい___。","tested-abilities":["na-adjectives","basic-grammar"],"correct-answer-index":2,"choices":["な","く","です","かった","に"]},

{"question":"このかばんはあまり___ないです。","tested-abilities":["i-adjectives","negative-copula"],"correct-answer-index":1,"choices":["(大:おお)きい","(大:おお)きく","(大:おお)きな","(大:おお)きかった","(大:おお)きくて"]},
{"question":"(昨日:きのう)の(映画:えいが)はおもしろ___。","tested-abilities":["i-adjectives","past-tense"],"correct-answer-index":4,"choices":["い","く","な","くて","かった"]},
{"question":"(猫:ねこ)が(好:す)きです。(犬:いぬ)が___です。","tested-abilities":["similar-vocabulary","basic-vocabulary"],"correct-answer-index":0,"choices":["(嫌:きら)い","じょうず","へた","しずか","げんき"]},
{"question":"(今日:きょう)は(三十度:さんじゅうど)です。とても___です。","tested-abilities":["weather","i-adjectives"],"correct-answer-index":2,"choices":["(寒:さむ)い","すずしい","(暑:あつ)い","(新:あたら)しい","(広:ひろ)い"]},
{"question":"(冬:ふゆ)は(寒:さむ)いですが、(夏:なつ)は___です。","tested-abilities":["seasons","i-adjectives"],"correct-answer-index":3,"choices":["(寒:さむ)い","すずしい","つめたい","(暑:あつ)い","(新:あたら)しい"]},
{"question":"(朝:あさ)ごはんにパンと___を(飲:の)みます。","tested-abilities":["food-and-drink","basic-vocabulary"],"correct-answer-index":1,"choices":["ごはん","ミルク","りんご","たまご","さかな"]},
{"question":"のどがかわきました。つめたい___を(飲:の)みます。","tested-abilities":["food-and-drink","basic-vocabulary"],"correct-answer-index":4,"choices":["パン","にく","ごはん","たまご","(水:みず)"]},
{"question":"おなかがすきました。ご(飯:はん)を___。","tested-abilities":["food-and-drink","verbs"],"correct-answer-index":0,"choices":["(食:た)べます","(飲:の)みます","(聞:き)きます","(会:あ)います","(寝:ね)ます"]},
{"question":"(駅:えき)で(電車:でんしゃ)に___。","tested-abilities":["transportation","verbs"],"correct-answer-index":3,"choices":["(降:お)ります","(会:あ)います","(作:つく)ります","(乗:の)ります","(開:あ)けます"]},
{"question":"(次:つぎ)の(駅:えき)で(電車:でんしゃ)を___。","tested-abilities":["transportation","verbs"],"correct-answer-index":2,"choices":["(乗:の)ります","(行:い)きます","(降:お)ります","(来:き)ます","(借:か)ります"]},

{"question":"バス___(学校:がっこう)へ(行:い)きます。","tested-abilities":["transportation","particles"],"correct-answer-index":1,"choices":["を","で","に","へ","から"]},
{"question":"(私:わたし)は(友達:ともだち)に(本:ほん)を___。","tested-abilities":["similar-vocabulary","verbs"],"correct-answer-index":4,"choices":["(借:か)ります","(読:よ)みます","(見:み)ます","もらいます","(貸:か)します"]},
{"question":"(私:わたし)は(友達:ともだち)から(本:ほん)を___。","tested-abilities":["similar-vocabulary","verbs"],"correct-answer-index":0,"choices":["(借:か)ります","(貸:か)します","あげます","おくります","つくります"]},
{"question":"(私:わたし)は(妹:いもうと)にプレゼントを___。","tested-abilities":["giving-and-receiving","verbs"],"correct-answer-index":2,"choices":["もらいます","くれます","あげます","(借:か)ります","(貸:か)します"]},
{"question":"(私:わたし)は(兄:あに)からプレゼントを___。","tested-abilities":["giving-and-receiving","verbs"],"correct-answer-index":1,"choices":["あげました","もらいました","くれました","(貸:か)しました","(借:か)りました"]},
{"question":"(母:はは)は(私:わたし)にプレゼントを___。","tested-abilities":["giving-and-receiving","verbs"],"correct-answer-index":3,"choices":["あげました","もらいました","(貸:か)しました","くれました","(借:か)りました"]},
{"question":"あれは___の(傘:かさ)ですか。(先生:せんせい)のです。","tested-abilities":["possessives","question-words"],"correct-answer-index":4,"choices":["どこ","いつ","なに","いくら","だれ"]},
{"question":"(私:わたし)の(手:て)にあるかばんは___です。","tested-abilities":["demonstratives","basic-vocabulary"],"correct-answer-index":1,"choices":["それ","これ","あれ","どれ","そこ"]},
{"question":"あなたの(手:て)にあるかばんは___です。","tested-abilities":["demonstratives","basic-vocabulary"],"correct-answer-index":0,"choices":["それ","これ","あれ","どれ","ここ"]},
{"question":"むこうにあるかばんは___です。","tested-abilities":["demonstratives","basic-vocabulary"],"correct-answer-index":2,"choices":["これ","それ","あれ","どれ","ここ"]},

{"question":"トイレは___ですか。あそこです。","tested-abilities":["asking-questions","question-words"],"correct-answer-index":3,"choices":["だれ","いつ","なに","どこ","いくら"]},
{"question":"ここは(図書館:としょかん)です。ここで___を(読:よ)みます。","tested-abilities":["basic-vocabulary","reading-comprehension"],"correct-answer-index":4,"choices":["くつ","かさ","かぎ","ぼうし","(本:ほん)"]},
{"question":"(家:いえ)に(猫:ねこ)が___います。","tested-abilities":["counters","existence-verbs"],"correct-answer-index":0,"choices":["(一匹:いっぴき)","(一本:いっぽん)","(一枚:いちまい)","(一人:ひとり)","(一台:いちだい)"]},
{"question":"りんごを___ください。","tested-abilities":["counters","food-and-drink"],"correct-answer-index":2,"choices":["(三人:さんにん)","(三本:さんぼん)","(三:みっ)つ","(三台:さんだい)","(三枚:さんまい)"]},
{"question":"(友達:ともだち)は(二人:ふたり)です。(私:わたし)をいれると、みんなで___です。","tested-abilities":["counters","stating-age"],"correct-answer-index":1,"choices":["(二人:ふたり)","(三人:さんにん)","(四人:よにん)","(五人:ごにん)","(一人:ひとり)"]},
{"question":"えんぴつを(二:に)___ください。","tested-abilities":["counters","basic-vocabulary"],"correct-answer-index":4,"choices":["(人:にん)","(枚:まい)","(台:だい)","(匹:ひき)","(本:ほん)"]},
{"question":"コップに(水:みず)を___ください。","tested-abilities":["requests","verbs"],"correct-answer-index":3,"choices":["(開:あ)けて","(閉:し)めて","(切:き)って","(入:い)れて","(消:け)して"]},
{"question":"(毎朝:まいあさ)(七時:しちじ)___(朝:あさ)ごはんを(食:た)べます。","tested-abilities":["time-expressions","particles"],"correct-answer-index":0,"choices":["に","を","で","から","まで"]},
{"question":"(七時:しちじ)に(起:お)きます。(八時:はちじ)___(学校:がっこう)へ(行:い)きます。","tested-abilities":["time-expressions","particles"],"correct-answer-index":2,"choices":["まで","から","に","を","で"]},
{"question":"(昨日:きのう)は(日曜日:にちようび)でした。(今日:きょう)は___です。","tested-abilities":["days-of-week","time-expressions"],"correct-answer-index":1,"choices":["(土曜日:どようび)","(月曜日:げつようび)","(火曜日:かようび)","(水曜日:すいようび)","(金曜日:きんようび)"]},

{"question":"(明日:あした)は(火曜日:かようび)です。(今日:きょう)は___です。","tested-abilities":["days-of-week","time-expressions"],"correct-answer-index":4,"choices":["(日曜日:にちようび)","(水曜日:すいようび)","(木曜日:もくようび)","(金曜日:きんようび)","(月曜日:げつようび)"]},
{"question":"(歯:は)をみがきおわりました。その___ベッドに(入:はい)ります。","tested-abilities":["time-expressions","daily-routines"],"correct-answer-index":1,"choices":["まえに","あとで","まで","から","より"]},
{"question":"(朝:あさ)ごはんを(食:た)べました。その___(学校:がっこう)へ(行:い)きます。","tested-abilities":["sequence-expressions","daily-routines"],"correct-answer-index":0,"choices":["あとで","まえに","まで","から","より"]},
{"question":"(私:わたし)は(料理:りょうり)___できます。","tested-abilities":["skills","particles"],"correct-answer-index":0,"choices":["が","を","に","で","へ"]},
{"question":"ピアノ___(日本:にほん)のうたをひきます。","tested-abilities":["instruments","particles"],"correct-answer-index":3,"choices":["を","に","が","で","へ"]},
{"question":"(日本:にほん)へ___たいです。","tested-abilities":["desires","movement-verbs"],"correct-answer-index":4,"choices":["いきます","いった","いって","いかない","いき"]},
{"question":"(映画:えいが)を___に(行:い)きます。","tested-abilities":["purpose-of-movement","verbs"],"correct-answer-index":3,"choices":["みます","みた","みて","み","みない"]},
{"question":"(毎日:まいにち)(六時:ろくじ)に(起:お)きる___にしています。","tested-abilities":["basic-grammar","daily-routines"],"correct-answer-index":1,"choices":["ため","よう","こと","もの","ところ"]},
{"question":"(雨:あめ)が(降:ふ)っている___、(傘:かさ)を(持:も)ちます。","tested-abilities":["reasons","basic-grammar"],"correct-answer-index":0,"choices":["から","まで","より","だけ","しか"]},
{"question":"(雨:あめ)が(降:ふ)っても、さんぽに___。","tested-abilities":["basic-grammar","verbs"],"correct-answer-index":4,"choices":["(行:い)きませんでした","(行:い)きたいです","(行:い)きました","(行:い)きません","(行:い)きます"]},

{"question":"ご(飯:はん)を(食:た)べて___、(歯:は)をみがきます。","tested-abilities":["sequence-expressions","verbs"],"correct-answer-index":0,"choices":["から","まで","より","だけ","しか"]},
{"question":"(明日:あした)は(休:やす)み です。___、(会社:かいしゃ)へ(行:い)きません。","tested-abilities":["reasons","basic-grammar"],"correct-answer-index":3,"choices":["でも","しかし","それとも","だから","それから"]},
{"question":"はさみを(使:つか)います。(紙:かみ)を___ください。","tested-abilities":["similar-vocabulary","requests"],"correct-answer-index":1,"choices":["かいて","きって","あらって","あけて","しめて"]},
{"question":"ノートに(名前:なまえ)を___ください。","tested-abilities":["similar-vocabulary","requests"],"correct-answer-index":0,"choices":["かいて","きって","あらって","あけて","しめて"]},
{"question":"(朝:あさ)、せっけんで(顔:かお)を___。","tested-abilities":["daily-routines","verbs"],"correct-answer-index":4,"choices":["きります","かきます","あけます","けします","あらいます"]},
{"question":"(窓:まど)があいています。(寒:さむ)いので、(窓:まど)を___。","tested-abilities":["similar-vocabulary","daily-life"],"correct-answer-index":2,"choices":["あけます","つけます","しめます","けします","きります"]},
{"question":"(部屋:へや)が(暗:くら)いです。(電気:でんき)を___。","tested-abilities":["similar-vocabulary","daily-life"],"correct-answer-index":3,"choices":["(消:け)します","しめます","あけます","つけます","おります"]},
{"question":"(朝:あさ)、シャツを___。","tested-abilities":["verbs","daily-routines"],"correct-answer-index":1,"choices":["ぬぎます","(着:き)ます","かぶります","はきます","あらいます"]},
{"question":"(靴:くつ)を___。","tested-abilities":["verbs","daily-routines"],"correct-answer-index":0,"choices":["はきます","きます","かぶります","ぬぎます","あけます"]},
{"question":"(帽子:ぼうし)を___。","tested-abilities":["verbs","daily-routines"],"correct-answer-index":4,"choices":["はきます","きます","ぬぎます","あらいます","かぶります"]}
]
''';
      // pass json to getCoachQuestionBank
      final questions = await getCoachQuestionBank(dataJson);
      expect(questions.isNotEmpty, true);
      expect(questions.length, 100);

      for (var q in questions) {
        expect(
          q.questionParts.where((qp) => qp.text == questionBlank).length,
          equals(1),
        );
      }

      // Add more expectations
    });
  });
}
