class Genre < ActiveHash::Base

  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '醤油ラーメン' },
    { id: 3, name: '塩ラーメン' },
    { id: 4, name: '味噌ラーメン' },
    { id: 5, name: 'とんこつラーメン' },
    { id: 6, name: '鶏白湯ラーメン' },
    { id: 7, name: '魚介とんこつラーメン' },
    { id: 8, name: '油そば' },
    { id: 9, name: '中華そば' },
    { id: 10, name: '家系ラーメン' },
    { id: 11, name: '二郎系ラーメン' },
    { id: 12, name: '坦々麺' },
    { id: 13, name: 'つけ麺' },
    { id: 14, name: 'まぜそば' },
    { id: 15, name: 'ちゃんぽん' },
    { id: 16, name: 'あごだしラーメン' },
    { id: 17, name: '台湾ラーメン' },
    { id: 18, name: 'ワンタン麺' },
    { id: 19, name: '牛骨ラーメン' },
    { id: 20, name: '黒ラーメン' },
    { id: 21, name: 'カレーラーメン' },
    { id: 22, name: 'トマトラーメン' },
    { id: 23, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :noodle

  end