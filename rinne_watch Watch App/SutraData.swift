import Foundation

struct RubyChar: Hashable {
    let char: String
    let ruby: String
}

enum SutraData {
    static let entries: [RubyChar] = [
        // 1 (13字)
        RubyChar(char: "妙", ruby: "myō"), RubyChar(char: "法", ruby: "hō"), RubyChar(char: "蓮", ruby: "ren"), RubyChar(char: "華", ruby: "gē"), RubyChar(char: "経", ruby: "kyō"), RubyChar(char: "如", ruby: "nyō"), RubyChar(char: "来", ruby: "rai"), RubyChar(char: "寿", ruby: "jū"), RubyChar(char: "量", ruby: "ryō"), RubyChar(char: "品", ruby: "hon"), RubyChar(char: "第", ruby: "dai"), RubyChar(char: "十", ruby: "jū"), RubyChar(char: "六", ruby: "roku"),
        // 2 (20字)
        RubyChar(char: "自", ruby: "jī"), RubyChar(char: "我", ruby: "gā"), RubyChar(char: "得", ruby: "toku"), RubyChar(char: "仏", ruby: "butsu"), RubyChar(char: "来", ruby: "rai"),
        RubyChar(char: "所", ruby: "shō"), RubyChar(char: "経", ruby: "kyō"), RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "劫", ruby: "kos"), RubyChar(char: "数", ruby: "shū"),
        RubyChar(char: "無", ruby: "mū"), RubyChar(char: "量", ruby: "ryō"), RubyChar(char: "百", ruby: "hyaku"), RubyChar(char: "千", ruby: "sen"), RubyChar(char: "万", ruby: "man"),
        RubyChar(char: "億", ruby: "oku"), RubyChar(char: "載", ruby: "sai"), RubyChar(char: "阿", ruby: "ā"), RubyChar(char: "僧", ruby: "sō"), RubyChar(char: "祇", ruby: "gī"),
        // 3
        RubyChar(char: "常", ruby: "jō"), RubyChar(char: "説", ruby: "sep"), RubyChar(char: "法", ruby: "pō"), RubyChar(char: "教", ruby: "kyō"), RubyChar(char: "化", ruby: "kē"),
        RubyChar(char: "無", ruby: "mū"), RubyChar(char: "数", ruby: "shū"), RubyChar(char: "億", ruby: "oku"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"),
        RubyChar(char: "令", ruby: "ryō"), RubyChar(char: "入", ruby: "nyū"), RubyChar(char: "於", ruby: "ō"), RubyChar(char: "仏", ruby: "butsu"), RubyChar(char: "道", ruby: "dō"),
        RubyChar(char: "爾", ruby: "nī"), RubyChar(char: "来", ruby: "rai"), RubyChar(char: "無", ruby: "mū"), RubyChar(char: "量", ruby: "ryō"), RubyChar(char: "劫", ruby: "kō"),
        // 4
        RubyChar(char: "為", ruby: "ī"), RubyChar(char: "度", ruby: "dō"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"), RubyChar(char: "故", ruby: "kō"),
        RubyChar(char: "方", ruby: "hō"), RubyChar(char: "便", ruby: "ben"), RubyChar(char: "現", ruby: "gen"), RubyChar(char: "涅", ruby: "nē"), RubyChar(char: "槃", ruby: "han"),
        RubyChar(char: "而", ruby: "nī"), RubyChar(char: "実", ruby: "jitsu"), RubyChar(char: "不", ruby: "fū"), RubyChar(char: "滅", ruby: "metsu"), RubyChar(char: "度", ruby: "dō"),
        RubyChar(char: "常", ruby: "jō"), RubyChar(char: "住", ruby: "jū"), RubyChar(char: "此", ruby: "shī"), RubyChar(char: "説", ruby: "sep"), RubyChar(char: "法", ruby: "pō"),
        // 5
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "常", ruby: "jō"), RubyChar(char: "住", ruby: "jū"), RubyChar(char: "於", ruby: "ō"), RubyChar(char: "此", ruby: "shī"),
        RubyChar(char: "以", ruby: "ī"), RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "神", ruby: "jin"), RubyChar(char: "通", ruby: "zū"), RubyChar(char: "力", ruby: "riki"),
        RubyChar(char: "令", ruby: "ryō"), RubyChar(char: "顛", ruby: "ten"), RubyChar(char: "倒", ruby: "dō"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"),
        RubyChar(char: "雖", ruby: "sui"), RubyChar(char: "近", ruby: "gon"), RubyChar(char: "而", ruby: "nī"), RubyChar(char: "不", ruby: "fū"), RubyChar(char: "見", ruby: "ken"),
        // 6
        RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "見", ruby: "ken"), RubyChar(char: "我", ruby: "gā"), RubyChar(char: "滅", ruby: "metsu"), RubyChar(char: "度", ruby: "dō"),
        RubyChar(char: "広", ruby: "kō"), RubyChar(char: "供", ruby: "kū"), RubyChar(char: "養", ruby: "yō"), RubyChar(char: "舎", ruby: "shā"), RubyChar(char: "利", ruby: "rī"),
        RubyChar(char: "咸", ruby: "gen"), RubyChar(char: "皆", ruby: "kai"), RubyChar(char: "懐", ruby: "ē"), RubyChar(char: "恋", ruby: "ren"), RubyChar(char: "慕", ruby: "bō"),
        RubyChar(char: "而", ruby: "nī"), RubyChar(char: "生", ruby: "shō"), RubyChar(char: "渇", ruby: "katsu"), RubyChar(char: "仰", ruby: "gō"), RubyChar(char: "心", ruby: "shin"),
        // 7
        RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"), RubyChar(char: "既", ruby: "kī"), RubyChar(char: "信", ruby: "shin"), RubyChar(char: "伏", ruby: "buku"),
        RubyChar(char: "質", ruby: "shichi"), RubyChar(char: "直", ruby: "jiki"), RubyChar(char: "意", ruby: "ī"), RubyChar(char: "柔", ruby: "nyū"), RubyChar(char: "軟", ruby: "nan"),
        RubyChar(char: "一", ruby: "is"), RubyChar(char: "心", ruby: "shin"), RubyChar(char: "欲", ruby: "yoku"), RubyChar(char: "見", ruby: "ken"), RubyChar(char: "仏", ruby: "butsu"),
        RubyChar(char: "不", ruby: "fū"), RubyChar(char: "自", ruby: "jī"), RubyChar(char: "惜", ruby: "shaku"), RubyChar(char: "身", ruby: "shin"), RubyChar(char: "命", ruby: "myō"),
        // 8
        RubyChar(char: "時", ruby: "jī"), RubyChar(char: "我", ruby: "gā"), RubyChar(char: "及", ruby: "gyū"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "僧", ruby: "sō"),
        RubyChar(char: "倶", ruby: "kū"), RubyChar(char: "出", ruby: "shutsu"), RubyChar(char: "霊", ruby: "ryō"), RubyChar(char: "鷲", ruby: "jū"), RubyChar(char: "山", ruby: "sen"),
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "時", ruby: "jī"), RubyChar(char: "語", ruby: "gō"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"),
        RubyChar(char: "常", ruby: "jō"), RubyChar(char: "在", ruby: "zai"), RubyChar(char: "此", ruby: "shī"), RubyChar(char: "不", ruby: "fū"), RubyChar(char: "滅", ruby: "metsu"),
        // 9
        RubyChar(char: "以", ruby: "ī"), RubyChar(char: "方", ruby: "hō"), RubyChar(char: "便", ruby: "ben"), RubyChar(char: "力", ruby: "riki"), RubyChar(char: "故", ruby: "kō"),
        RubyChar(char: "現", ruby: "gen"), RubyChar(char: "有", ruby: "ū"), RubyChar(char: "滅", ruby: "metsu"), RubyChar(char: "不", ruby: "fū"), RubyChar(char: "滅", ruby: "metsu"),
        RubyChar(char: "余", ruby: "yō"), RubyChar(char: "国", ruby: "koku"), RubyChar(char: "有", ruby: "ū"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"),
        RubyChar(char: "恭", ruby: "kū"), RubyChar(char: "敬", ruby: "gyō"), RubyChar(char: "信", ruby: "shin"), RubyChar(char: "楽", ruby: "gyō"), RubyChar(char: "者", ruby: "shā"),
        // 10
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "復", ruby: "bū"), RubyChar(char: "於", ruby: "ō"), RubyChar(char: "彼", ruby: "hī"), RubyChar(char: "中", ruby: "chū"),
        RubyChar(char: "為", ruby: "ī"), RubyChar(char: "説", ruby: "setsu"), RubyChar(char: "無", ruby: "mū"), RubyChar(char: "上", ruby: "jō"), RubyChar(char: "法", ruby: "hō"),
        RubyChar(char: "汝", ruby: "nyō"), RubyChar(char: "等", ruby: "tō"), RubyChar(char: "不", ruby: "fū"), RubyChar(char: "聞", ruby: "mon"), RubyChar(char: "此", ruby: "shī"),
        RubyChar(char: "但", ruby: "tan"), RubyChar(char: "謂", ruby: "nī"), RubyChar(char: "我", ruby: "gā"), RubyChar(char: "滅", ruby: "metsu"), RubyChar(char: "度", ruby: "dō"),
        // 11
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "見", ruby: "ken"), RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"),
        RubyChar(char: "没", ruby: "motsu"), RubyChar(char: "在", ruby: "zai"), RubyChar(char: "於", ruby: "ō"), RubyChar(char: "苦", ruby: "kū"), RubyChar(char: "海", ruby: "kai"),
        RubyChar(char: "故", ruby: "kō"), RubyChar(char: "不", ruby: "fū"), RubyChar(char: "為", ruby: "ī"), RubyChar(char: "現", ruby: "gen"), RubyChar(char: "身", ruby: "shin"),
        RubyChar(char: "令", ruby: "ryō"), RubyChar(char: "其", ruby: "gō"), RubyChar(char: "生", ruby: "shō"), RubyChar(char: "渇", ruby: "katsu"), RubyChar(char: "仰", ruby: "gō"),
        // 12
        RubyChar(char: "因", ruby: "in"), RubyChar(char: "其", ruby: "gō"), RubyChar(char: "心", ruby: "shin"), RubyChar(char: "恋", ruby: "ren"), RubyChar(char: "慕", ruby: "bō"),
        RubyChar(char: "乃", ruby: "nai"), RubyChar(char: "出", ruby: "shutsu"), RubyChar(char: "為", ruby: "ī"), RubyChar(char: "説", ruby: "sep"), RubyChar(char: "法", ruby: "pō"),
        RubyChar(char: "神", ruby: "jin"), RubyChar(char: "通", ruby: "zū"), RubyChar(char: "力", ruby: "riki"), RubyChar(char: "如", ruby: "nyō"), RubyChar(char: "是", ruby: "zē"),
        RubyChar(char: "於", ruby: "ō"), RubyChar(char: "阿", ruby: "ā"), RubyChar(char: "僧", ruby: "sō"), RubyChar(char: "祇", ruby: "gī"), RubyChar(char: "劫", ruby: "kō"),
        // 13
        RubyChar(char: "常", ruby: "jō"), RubyChar(char: "在", ruby: "zai"), RubyChar(char: "霊", ruby: "ryō"), RubyChar(char: "鷲", ruby: "jū"), RubyChar(char: "山", ruby: "sen"),
        RubyChar(char: "及", ruby: "gyū"), RubyChar(char: "余", ruby: "yō"), RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "住", ruby: "jū"), RubyChar(char: "処", ruby: "shō"),
        RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"), RubyChar(char: "見", ruby: "ken"), RubyChar(char: "劫", ruby: "kō"), RubyChar(char: "尽", ruby: "jin"),
        RubyChar(char: "大", ruby: "dai"), RubyChar(char: "火", ruby: "kā"), RubyChar(char: "所", ruby: "shō"), RubyChar(char: "焼", ruby: "shō"), RubyChar(char: "時", ruby: "jī"),
        // 14
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "此", ruby: "shī"), RubyChar(char: "土", ruby: "dō"), RubyChar(char: "安", ruby: "an"), RubyChar(char: "穏", ruby: "non"),
        RubyChar(char: "天", ruby: "ten"), RubyChar(char: "人", ruby: "nin"), RubyChar(char: "常", ruby: "jō"), RubyChar(char: "充", ruby: "jū"), RubyChar(char: "満", ruby: "man"),
        RubyChar(char: "園", ruby: "on"), RubyChar(char: "林", ruby: "rin"), RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "堂", ruby: "dō"), RubyChar(char: "閣", ruby: "kaku"),
        RubyChar(char: "種", ruby: "shū"), RubyChar(char: "種", ruby: "jū"), RubyChar(char: "宝", ruby: "hō"), RubyChar(char: "荘", ruby: "shō"), RubyChar(char: "厳", ruby: "gon"),
        // 15
        RubyChar(char: "宝", ruby: "hō"), RubyChar(char: "樹", ruby: "jū"), RubyChar(char: "多", ruby: "tā"), RubyChar(char: "華", ruby: "kē"), RubyChar(char: "果", ruby: "kā"),
        RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"), RubyChar(char: "所", ruby: "shō"), RubyChar(char: "遊", ruby: "yū"), RubyChar(char: "楽", ruby: "raku"),
        RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "天", ruby: "ten"), RubyChar(char: "撃", ruby: "kyaku"), RubyChar(char: "天", ruby: "ten"), RubyChar(char: "鼓", ruby: "kū"),
        RubyChar(char: "常", ruby: "jō"), RubyChar(char: "作", ruby: "sā"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "妓", ruby: "gī"), RubyChar(char: "楽", ruby: "gaku"),
        // 16
        RubyChar(char: "雨", ruby: "ū"), RubyChar(char: "曼", ruby: "man"), RubyChar(char: "陀", ruby: "dā"), RubyChar(char: "羅", ruby: "rā"), RubyChar(char: "華", ruby: "kē"),
        RubyChar(char: "散", ruby: "san"), RubyChar(char: "仏", ruby: "butsu"), RubyChar(char: "及", ruby: "gyū"), RubyChar(char: "大", ruby: "dai"), RubyChar(char: "衆", ruby: "shū"),
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "浄", ruby: "jō"), RubyChar(char: "土", ruby: "dō"), RubyChar(char: "不", ruby: "fū"), RubyChar(char: "毀", ruby: "kī"),
        RubyChar(char: "而", ruby: "nī"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "見", ruby: "ken"), RubyChar(char: "焼", ruby: "shō"), RubyChar(char: "尽", ruby: "jin"),
        // 17
        RubyChar(char: "憂", ruby: "ū"), RubyChar(char: "怖", ruby: "fū"), RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "苦", ruby: "kū"), RubyChar(char: "悩", ruby: "nō"),
        RubyChar(char: "如", ruby: "nyō"), RubyChar(char: "是", ruby: "zē"), RubyChar(char: "悉", ruby: "shitsu"), RubyChar(char: "充", ruby: "jū"), RubyChar(char: "満", ruby: "man"),
        RubyChar(char: "是", ruby: "zē"), RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "罪", ruby: "zai"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"),
        RubyChar(char: "以", ruby: "ī"), RubyChar(char: "悪", ruby: "aku"), RubyChar(char: "業", ruby: "gō"), RubyChar(char: "因", ruby: "in"), RubyChar(char: "縁", ruby: "nen"),
        // 18
        RubyChar(char: "過", ruby: "kā"), RubyChar(char: "阿", ruby: "ā"), RubyChar(char: "僧", ruby: "sō"), RubyChar(char: "祇", ruby: "gī"), RubyChar(char: "劫", ruby: "kō"),
        RubyChar(char: "不", ruby: "fū"), RubyChar(char: "聞", ruby: "mon"), RubyChar(char: "三", ruby: "san"), RubyChar(char: "宝", ruby: "bō"), RubyChar(char: "名", ruby: "myō"),
        RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "有", ruby: "ū"), RubyChar(char: "修", ruby: "shū"), RubyChar(char: "功", ruby: "kū"), RubyChar(char: "徳", ruby: "doku"),
        RubyChar(char: "柔", ruby: "nyū"), RubyChar(char: "和", ruby: "wā"), RubyChar(char: "質", ruby: "shichi"), RubyChar(char: "直", ruby: "jiki"), RubyChar(char: "者", ruby: "shā"),
        // 19
        RubyChar(char: "則", ruby: "sok"), RubyChar(char: "皆", ruby: "kai"), RubyChar(char: "見", ruby: "ken"), RubyChar(char: "我", ruby: "gā"), RubyChar(char: "身", ruby: "shin"),
        RubyChar(char: "在", ruby: "zai"), RubyChar(char: "此", ruby: "shī"), RubyChar(char: "而", ruby: "nī"), RubyChar(char: "説", ruby: "sep"), RubyChar(char: "法", ruby: "pō"),
        RubyChar(char: "或", ruby: "waku"), RubyChar(char: "時", ruby: "jī"), RubyChar(char: "為", ruby: "ī"), RubyChar(char: "此", ruby: "shī"), RubyChar(char: "衆", ruby: "shū"),
        RubyChar(char: "説", ruby: "setsu"), RubyChar(char: "仏", ruby: "butsu"), RubyChar(char: "寿", ruby: "jū"), RubyChar(char: "無", ruby: "mū"), RubyChar(char: "量", ruby: "ryō"),
        // 20
        RubyChar(char: "久", ruby: "kū"), RubyChar(char: "乃", ruby: "nai"), RubyChar(char: "見", ruby: "ken"), RubyChar(char: "仏", ruby: "bus"), RubyChar(char: "者", ruby: "shā"),
        RubyChar(char: "為", ruby: "ī"), RubyChar(char: "説", ruby: "setsu"), RubyChar(char: "仏", ruby: "butsu"), RubyChar(char: "難", ruby: "nan"), RubyChar(char: "値", ruby: "chī"),
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "智", ruby: "chī"), RubyChar(char: "力", ruby: "riki"), RubyChar(char: "如", ruby: "nyō"), RubyChar(char: "是", ruby: "zē"),
        RubyChar(char: "慧", ruby: "ē"), RubyChar(char: "光", ruby: "kō"), RubyChar(char: "照", ruby: "shō"), RubyChar(char: "無", ruby: "mū"), RubyChar(char: "量", ruby: "ryō"),
        // 21
        RubyChar(char: "寿", ruby: "jū"), RubyChar(char: "命", ruby: "myō"), RubyChar(char: "無", ruby: "mū"), RubyChar(char: "数", ruby: "shū"), RubyChar(char: "劫", ruby: "kō"),
        RubyChar(char: "久", ruby: "kū"), RubyChar(char: "修", ruby: "shū"), RubyChar(char: "業", ruby: "gō"), RubyChar(char: "所", ruby: "shō"), RubyChar(char: "得", ruby: "toku"),
        RubyChar(char: "汝", ruby: "nyō"), RubyChar(char: "等", ruby: "tō"), RubyChar(char: "有", ruby: "ū"), RubyChar(char: "智", ruby: "chī"), RubyChar(char: "者", ruby: "shā"),
        RubyChar(char: "勿", ruby: "mot"), RubyChar(char: "於", ruby: "tō"), RubyChar(char: "此", ruby: "shī"), RubyChar(char: "生", ruby: "shō"), RubyChar(char: "疑", ruby: "gī"),
        // 22
        RubyChar(char: "当", ruby: "tō"), RubyChar(char: "断", ruby: "dan"), RubyChar(char: "令", ruby: "ryō"), RubyChar(char: "永", ruby: "yō"), RubyChar(char: "尽", ruby: "jin"),
        RubyChar(char: "仏", ruby: "butsu"), RubyChar(char: "語", ruby: "gō"), RubyChar(char: "実", ruby: "jip"), RubyChar(char: "不", ruby: "pū"), RubyChar(char: "虚", ruby: "kō"),
        RubyChar(char: "如", ruby: "nyō"), RubyChar(char: "医", ruby: "ī"), RubyChar(char: "善", ruby: "zen"), RubyChar(char: "方", ruby: "hō"), RubyChar(char: "便", ruby: "ben"),
        RubyChar(char: "為", ruby: "ī"), RubyChar(char: "治", ruby: "jī"), RubyChar(char: "狂", ruby: "ō"), RubyChar(char: "子", ruby: "shī"), RubyChar(char: "故", ruby: "kō"),
        // 23
        RubyChar(char: "実", ruby: "jitsu"), RubyChar(char: "在", ruby: "zai"), RubyChar(char: "而", ruby: "nī"), RubyChar(char: "言", ruby: "gon"), RubyChar(char: "死", ruby: "shī"),
        RubyChar(char: "無", ruby: "mū"), RubyChar(char: "能", ruby: "nō"), RubyChar(char: "説", ruby: "sek"), RubyChar(char: "虚", ruby: "kō"), RubyChar(char: "妄", ruby: "mō"),
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "亦", ruby: "yaku"), RubyChar(char: "為", ruby: "ī"), RubyChar(char: "世", ruby: "sē"), RubyChar(char: "父", ruby: "bū"),
        RubyChar(char: "救", ruby: "kū"), RubyChar(char: "諸", ruby: "shō"), RubyChar(char: "苦", ruby: "kū"), RubyChar(char: "患", ruby: "gen"), RubyChar(char: "者", ruby: "shā"),
        // 24
        RubyChar(char: "為", ruby: "ī"), RubyChar(char: "凡", ruby: "bon"), RubyChar(char: "夫", ruby: "bū"), RubyChar(char: "顛", ruby: "ten"), RubyChar(char: "倒", ruby: "dō"),
        RubyChar(char: "実", ruby: "jitsu"), RubyChar(char: "在", ruby: "zai"), RubyChar(char: "而", ruby: "nī"), RubyChar(char: "言", ruby: "gon"), RubyChar(char: "滅", ruby: "metsu"),
        RubyChar(char: "以", ruby: "ī"), RubyChar(char: "常", ruby: "jō"), RubyChar(char: "見", ruby: "ken"), RubyChar(char: "我", ruby: "gā"), RubyChar(char: "故", ruby: "kō"),
        RubyChar(char: "而", ruby: "nī"), RubyChar(char: "生", ruby: "shō"), RubyChar(char: "憍", ruby: "kyō"), RubyChar(char: "恣", ruby: "shī"), RubyChar(char: "心", ruby: "shin"),
        // 25
        RubyChar(char: "放", ruby: "hō"), RubyChar(char: "逸", ruby: "itsu"), RubyChar(char: "著", ruby: "jaku"), RubyChar(char: "五", ruby: "gō"), RubyChar(char: "欲", ruby: "yoku"),
        RubyChar(char: "堕", ruby: "dā"), RubyChar(char: "於", ruby: "ō"), RubyChar(char: "悪", ruby: "aku"), RubyChar(char: "道", ruby: "dō"), RubyChar(char: "中", ruby: "chū"),
        RubyChar(char: "我", ruby: "gā"), RubyChar(char: "常", ruby: "jō"), RubyChar(char: "知", ruby: "chī"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"),
        RubyChar(char: "行", ruby: "gyō"), RubyChar(char: "道", ruby: "dō"), RubyChar(char: "不", ruby: "fū"), RubyChar(char: "行", ruby: "gyō"), RubyChar(char: "道", ruby: "dō"),
        // 26
        RubyChar(char: "随", ruby: "zui"), RubyChar(char: "応", ruby: "ō"), RubyChar(char: "所", ruby: "shō"), RubyChar(char: "可", ruby: "kā"), RubyChar(char: "度", ruby: "dō"),
        RubyChar(char: "為", ruby: "ī"), RubyChar(char: "説", ruby: "ses"), RubyChar(char: "種", ruby: "shū"), RubyChar(char: "種", ruby: "jū"), RubyChar(char: "法", ruby: "hō"),
        RubyChar(char: "毎", ruby: "mai"), RubyChar(char: "自", ruby: "jī"), RubyChar(char: "作", ruby: "sā"), RubyChar(char: "是", ruby: "zē"), RubyChar(char: "念", ruby: "nen"),
        RubyChar(char: "以", ruby: "ī"), RubyChar(char: "何", ruby: "gā"), RubyChar(char: "令", ruby: "ryō"), RubyChar(char: "衆", ruby: "shū"), RubyChar(char: "生", ruby: "jō"),
        // 27 (10字)
        RubyChar(char: "得", ruby: "toku"), RubyChar(char: "入", ruby: "nyū"), RubyChar(char: "無", ruby: "mū"), RubyChar(char: "上", ruby: "jō"), RubyChar(char: "道", ruby: "dō"),
        RubyChar(char: "速", ruby: "soku"), RubyChar(char: "成", ruby: "jō"), RubyChar(char: "就", ruby: "jū"), RubyChar(char: "仏", ruby: "bus"), RubyChar(char: "身", ruby: "shin")
    ]

    static let characters: [String] = entries.map { $0.char }

    /// 段ごとの文字数（1=タイトル13字、2〜26=各20字、27=10字）
    private static let groupSizes: [Int] = [13] + Array(repeating: 20, count: 25) + [10]

    /// 段ごとに区切った RubyChar の配列
    static let groups: [[RubyChar]] = {
        var result: [[RubyChar]] = []
        var offset = 0
        for size in groupSizes {
            let end = min(offset + size, entries.count)
            result.append(Array(entries[offset..<end]))
            offset = end
        }
        return result
    }()

    /// 通し文字インデックスから「何段目にいるか」を返す
    static func groupIndex(forCharacterIndex index: Int) -> Int {
        let total = entries.count
        guard total > 0 else { return 0 }
        let n = ((index % total) + total) % total
        var sum = 0
        for (gi, g) in groups.enumerated() {
            sum += g.count
            if n < sum { return gi }
        }
        return groups.count - 1
    }

    /// 段インデックスから漢字配列を取得（循環）
    static func groupChars(at index: Int) -> [String] {
        let count = groups.count
        guard count > 0 else { return [] }
        let n = ((index % count) + count) % count
        return groups[n].map { $0.char }
    }
}
