
[scenedef]
spr = end.sff
startscene = 0			;starting scene number (デバッガ)
				;シーンナンバーに飛びがある状態で指定するとエラーを吐く
;------------------------------------------------------------------------
;------------------------------------------------------------------------
;決めポーズ長パン
[scene 0];チャプター
fadein.time = 60		;フェードインの尺（layer0.starttime　の時間、含む）
fadein.col = 0,0,0		;フェードイン時のカラー（二値化されている）use 255,255,255 for white-fade
fadeout.time = 100
fadeout.col = 255,255,255	;フェードアウト時のカラー。ラストシーンを白フェードにすると画面がおかしくなる
clearcolor = 0,0,0		;透過部分の背景色
bg.name = bg0			;bgレイヤがある場合指定する

;overlay anims (from 0 to 9)	;メインレイヤのアニメの設定
layerall.pos = 0,0		;全てのレイヤでの基本となる位置。所謂初期値。
layer0.anim =  -1		;アニメid（このファイルの後半部分がアニメ指定になっていて、そこから呼び出す
layer0.offset = 0,0		;位置の指定
layer0.starttime = 0		;このレイヤーのアニメをスタートさせるタイミングを指定します。(0の場合は勿論"最初から"の意味)

;music
bgm = bgm1.mp3			;流すbgmのファイル名。ストーリーボードdefファイルからの相対パス
bgm.loop = 0
volume = 0

;total time
end.time = 870			;シーン全体の尺


[bg0def]

[bg0 credits];バック
id = 2
type = anim
actionno = 2
start = -160,-200;※基本レイヤーを空にした場合、xは画面中央が0になる（たぶん）
mask = 1

[bg0ctrldef]
ctrlid = 2
looptime = -1

[bg0ctrl]
type = velset
time = 0
y = 0.3

[bg0ctrl]
type = velset
time = 480
y = 0

[bg0 credits];さやかちゃん
id = 0
type = anim
actionno = 0
start = -160,-200
mask = 1

[bg0ctrldef]
ctrlid = 0
looptime = -1

[bg0ctrl]
type = velset
time = 0
y = 0.3

[bg0ctrl]
type = velset
time = 480
y = 0

[bg0 credits];フロント
id = 1
type = anim
actionno = 1
start = -160,-200
mask = 1

[bg0ctrldef]
ctrlid = 1
looptime = -1

[bg0ctrl]
type = velset
time = 0
y = 0.3

[bg0ctrl]
type = velset
time = 480
y = 0

[bg0 credits];ウィンドウ
id = 2000
type = anim
actionno = 2000
start = -160,0
mask = 1

[bg0ctrldef]
ctrlid = 2000
looptime = -1

[bg0 credits];テキスト
id = 3000
type = anim
actionno = 3000
start = -160,0
mask = 1

[bg0ctrldef]
ctrlid = 3000
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;本編リンク・陣形ロング
[scene 1]
fadein.time = 60
fadein.col = 255,255,255
fadeout.time = 30
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg10

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 280

[bg10def]

[bg10 credits];bg
id = 10
type = anim
actionno = 10
start = -160,0
mask = 1

[bg10ctrldef]
ctrlid = 10
looptime = -1

[bg10 credits];ウィンドウ
id = 2010
type = anim
actionno = 2010
start = -160,0
mask = 1

[bg10ctrldef]
ctrlid = 2010
looptime = -1

[bg10 credits];テキスト
id = 3010
type = anim
actionno = 3010
start = -160,0
mask = 1

[bg10ctrldef]
ctrlid = 3010
looptime = -1

[bg10 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg10ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;杏子→ほむら
[scene 2]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg20

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 500

[bg20def]

[bg20 credits];bg
id = 20
type = anim
actionno = 20
start = -160,0
mask = 1

[bg20ctrldef]
ctrlid = 20
looptime = -1

[bg20 credits];ウィンドウ
id = 2020
type = anim
actionno = 2020
start = -160,0
mask = 1

[bg20ctrldef]
ctrlid = 2020
looptime = -1

[bg20 credits];テキスト
id = 3020
type = anim
actionno = 3020
start = -160,0
mask = 1

[bg20ctrldef]
ctrlid = 3020
looptime = -1

[bg20 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg20ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;本編リンク・マミうつむき
[scene 3]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg30

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 270

[bg30def]

[bg30 credits];bg
id = 30
type = anim
actionno = 30
start = -160,0
mask = 1

[bg30ctrldef]
ctrlid = 30
looptime = -1

[bg30 credits];ウィンドウ
id = 2030
type = anim
actionno = 2030
start = -160,0
mask = 1

[bg30ctrldef]
ctrlid = 2030
looptime = -1

[bg30 credits];テキスト
id = 3030
type = anim
actionno = 3030
start = -160,0
mask = 1

[bg30ctrldef]
ctrlid = 3030
looptime = -1

[bg30 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg30ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;ドヤああああああ
[scene 4]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg40

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 300

[bg40def]

[bg40 credits];bg
id = 40
type = anim
actionno = 40
start = -160,0
mask = 1

[bg40ctrldef]
ctrlid = 40
looptime = -1

[bg40 credits];ウィンドウ
id = 2040
type = anim
actionno = 2040
start = -160,0
mask = 1

[bg40ctrldef]
ctrlid = 2040
looptime = -1

[bg40 credits];テキスト
id = 3040
type = anim
actionno = 3040
start = -160,0
mask = 1

[bg40ctrldef]
ctrlid = 3040
looptime = -1

[bg40 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg40ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;マミさんマミマミ
[scene 5]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 60
fadeout.col = 255,255,255
clearcolor = 0,0,0
bg.name = bg50

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 180

[bg50def]

[bg50 credits];bg
id = 50
type = anim
actionno = 50
start = -160,0
mask = 1

[bg50ctrldef]
ctrlid = 50
looptime = -1

[bg50 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg50ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;宇宙を彷徨うさやか
[scene 6]
fadein.time = 120
fadein.col = 255,255,255
fadeout.time = 20
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg60

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 390

[bg60def]

[bg60 credits];宇宙
id = 1000
type = anim
actionno = 1000
start = -160,0
mask = 1

[bg60ctrldef]
ctrlid = 1000
looptime = -1

[bg60ctrl]
type = velset
time = 0
x = -0.05

[bg60 credits];星
id = 1100
type = anim
actionno = 1100
start = -210,0
mask = 1

[bg60ctrldef]
ctrlid = 1100
looptime = -1

[bg60ctrl]
type = velset
time = 0
x = -0.1

[bg60 credits];まどか
id = 62
type = anim
actionno = 62
start = 180,100
mask = 1

[bg60ctrldef]
ctrlid = 62
looptime = -1

[bg60ctrl]
type = velset
time = 0
x = -0.2

[bg60 credits];さやか
id = 61
type = anim
actionno = 61
start = -50,100
mask = 1

[bg60ctrldef]
ctrlid = 61
looptime = -1

[bg60ctrl]
type = velset
time = 0
x = 0.1


;[bg60 credits];ライティング（使用しません）
;id = 63
;type = anim
;actionno = 63
;start = -160,0
;mask = 1

;[bg60ctrldef]
;ctrlid = 63
;looptime = -1

[bg60 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg60ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;再会するさやかとまどか
[scene 7]
fadein.time = 10
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg70

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 280


[bg70def]

[bg70 credits];宇宙
id = 1000
type = anim
actionno = 1000
start = -200,-200
mask = 1

[bg70ctrldef]
ctrlid = 1000
looptime = -1

[bg70ctrl]
type = velset
time = 0
y = -0.15

[bg70 credits];星
id = 1100
type = anim
actionno = 1100
start = -200,-200
mask = 1

[bg70ctrldef]
ctrlid = 1100
looptime = -1

[bg70ctrl]
type = velset
time = 0
y = -0.3

[bg70 credits];まどか
id = 72
type = anim
actionno = 72
start = -160,-100
mask = 1

[bg70ctrldef]
ctrlid = 72
looptime = -1

[bg70ctrl]
type = velset
time = 0
y = 0.1

[bg70 credits];さやか
id = 71
type = anim
actionno = 71
start = -160,100
mask = 1

[bg70ctrldef]
ctrlid = 71
looptime = -1

[bg70ctrl]
type = velset
time = 0
y = -0.1

[bg70 credits];ウィンドウ
id = 2070
type = anim
actionno = 2070
start = -160,0
mask = 1

[bg70ctrldef]
ctrlid = 2070
looptime = -1

[bg70 credits];テキスト
id = 3070
type = anim
actionno = 3070
start = -160,0
mask = 1

[bg70ctrldef]
ctrlid = 3070
looptime = -1

[bg70 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg70ctrldef]
ctrlid = 999
looptime = -1


;------------------------------------------------------------------------
;------------------------------------------------------------------------
;ふれあう二人
[scene 8]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg80

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 270


[bg80def]

[bg80 credits];まどか
id = 83
type = anim
actionno = 83
start = -180,0
mask = 1

[bg80ctrldef]
ctrlid = 83
looptime = -1

[bg80ctrl]
type = velset
time = 0
x = -0.08

[bg80 credits];さやか
id = 81
type = anim
actionno = 81
start = -240,0
mask = 1

[bg80ctrldef]
ctrlid = 81
looptime = -1

[bg80ctrl]
type = velset
time = 0
x = 0.08

[bg80 credits];ウィンドウ
id = 2080
type = anim
actionno = 2080
start = -160,0
mask = 1

[bg80ctrldef]
ctrlid = 2080
looptime = -1

[bg80 credits];テキスト
id = 3080
type = anim
actionno = 3080
start = -160,0
mask = 1

[bg80ctrldef]
ctrlid = 3080
looptime = -1

[bg80 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg80ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;うつむくさやかちゃん
[scene 9]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg90

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 190


[bg90def]

[bg90 credits];宇宙
id = 1000
type = anim
actionno = 1000
start = -160,0
mask = 1

[bg90ctrldef]
ctrlid = 1000
looptime = -1

[bg90ctrl]
type = velset
time = 0
x = -0.05

[bg90 credits];星
id = 1100
type = anim
actionno = 1100
start = -210,0
mask = 1

[bg90ctrldef]
ctrlid = 1100
looptime = -1

[bg90ctrl]
type = velset
time = 0
x = -0.1

[bg90 credits];まどか
id = 92
type = anim
actionno = 92
start = 60,100
mask = 1

[bg90ctrldef]
ctrlid = 92
looptime = -1

[bg90ctrl]
type = velset
time = 0
x = -0.03

[bg90 credits];さやか
id = 91
type = anim
actionno = 91
start = 0,100
mask = 1

[bg90ctrldef]
ctrlid = 91
looptime = -1

[bg90ctrl]
type = velset
time = 0
x = 0.03

[bg90 credits];ウィンドウ
id = 2090
type = anim
actionno = 2090
start = -160,0
mask = 1

[bg90ctrldef]
ctrlid = 2090
looptime = -1

[bg90 credits];テキスト
id = 3090
type = anim
actionno = 3090
start = -160,0
mask = 1

[bg90ctrldef]
ctrlid = 3090
looptime = -1

[bg90 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg90ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;泣くさやかちゃん
[scene 10]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 60
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg100

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 420


[bg100def]

[bg100 credits];宇宙
id = 1000
type = anim
actionno = 1000
start = -200,-130
mask = 1

[bg100ctrldef]
ctrlid = 1000
looptime = -1

[bg100ctrl]
type = velset
time = 0
x = -0.2

[bg100 credits];星
id = 1100
type = anim
actionno = 1100
start = -200,-100
mask = 1

[bg100ctrldef]
ctrlid = 1100
looptime = -1

[bg100ctrl]
type = velset
time = 0
x = -0.4

[bg100 credits];まどか
id = 102
type = anim
actionno = 102
start = -240,0
mask = 1

[bg100ctrldef]
ctrlid = 102
looptime = -1

[bg100ctrl]
type = velset
time = 0
x = 0.1

[bg100 credits];さやか
id = 101
type = anim
actionno = 101
start = -260,0
mask = 1

[bg100ctrldef]
ctrlid = 101
looptime = -1

[bg100ctrl]
type = velset
time = 0
x = 0.1

[bg100 credits];さやかの涙
id = 109
type = anim
actionno = 109
start = -250,0
mask = 1

[bg100ctrldef]
ctrlid = 109
looptime = -1

[bg100ctrl]
type = velset
time = 0
x = -0.1


[bg100 credits];ウィンドウ
id = 2100
type = anim
actionno = 2100
start = -160,0
mask = 1

[bg100ctrldef]
ctrlid = 2100
looptime = -1

[bg100 credits];テキスト
id = 3100
type = anim
actionno = 3100
start = -160,0
mask = 1

[bg100ctrldef]
ctrlid = 3100
looptime = -1

[bg100 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg100ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;マミさんなめ抱き合う二人
[scene 11]
fadein.time = 60
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg110

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 190

[bg110def]

[bg110 credits];宇宙
id = 1000
type = anim
actionno = 1000
start = -200,-200
mask = 1

[bg110ctrldef]
ctrlid = 1000
looptime = -1

[bg110ctrl]
type = velset
time = 0
x = -0.17
y = -0.2

[bg110 credits];星
id = 1100
type = anim
actionno = 1100
start = -200,-200
mask = 1

[bg110ctrldef]
ctrlid = 1100
looptime = -1

[bg110ctrl]
type = velset
time = 0
x = -0.4
y = -0.35

[bg110 credits];まど☆さや
id = 111
type = anim
actionno = 111
start = 60,100
mask = 1

[bg110ctrldef]
ctrlid = 111
looptime = -1

[bg110 credits];ヘッドレスマミ
id = 112
type = anim
actionno = 112
start = -250,120
mask = 1

[bg110ctrldef]
ctrlid = 112
looptime = -1

[bg110ctrl]
type = velset
time = 0
x = 1.2
y = 0.4

[bg110 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg110ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;宇宙を彷徨うヘッドレスマミ
[scene 12]
fadein.time = 20
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg120

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 290

[bg120def]

[bg120 credits];宇宙
id = 1000
type = anim
actionno = 1000
start = -330,-100
mask = 1

[bg120ctrldef]
ctrlid = 1000
looptime = -1

[bg120ctrl]
type = velset
time = 0
x = 0.4
y = 0.1

[bg120 credits];星
id = 1100
type = anim
actionno = 1100
start = -390,-100
mask = 1

[bg120ctrldef]
ctrlid = 1100
looptime = -1

[bg120ctrl]
type = velset
time = 0
x = 0.8
y = 0.23

[bg120 credits];ヘッドレスマミ
id = 121
type = anim
actionno = 121
start = 80,130
mask = 1

[bg120ctrldef]
ctrlid = 121
looptime = -1

[bg120ctrl]
type = velset
time = 0
x = -0.5
y = -0.13

[bg120 credits];スペースデブリ
id = 122
type = anim
actionno = 122
start = 100,200
mask = 1

[bg120ctrldef]
ctrlid = 122
looptime = -1

[bg120ctrl]
type = velset
time = 0
x = -1.2
y = -0.3

[bg120 credits];ウィンドウ
id = 2120
type = anim
actionno = 2120
start = -160,0
mask = 1

[bg120ctrldef]
ctrlid = 2120
looptime = -1

[bg120 credits];テキスト
id = 3120
type = anim
actionno = 3120
start = -160,0
mask = 1

[bg120ctrldef]
ctrlid = 3120
looptime = -1

[bg120 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg120ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;残されたぼくら
[scene 13]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg130

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 360

[bg130def]

[bg130 credits];bg
id = 130
type = anim
actionno = 130
start = -160,0
mask = 1

[bg130ctrldef]
ctrlid = 130
looptime = -1

[bg130 credits];ウィンドウ
id = 2130
type = anim
actionno = 2130
start = -160,0
mask = 1

[bg130ctrldef]
ctrlid = 2130
looptime = -1

[bg130 credits];テキスト
id = 3130
type = anim
actionno = 3130
start = -160,0
mask = 1

[bg130ctrldef]
ctrlid = 3130
looptime = -1

[bg130 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg130ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;星に願いを
[scene 14]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg140

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 220

[bg140def]

[bg140 credits];bg
id = 140
type = anim
actionno = 140
start = -160,0
mask = 1

[bg140ctrldef]
ctrlid = 140
looptime = -1

[bg140 credits];ウィンドウ
id = 2140
type = anim
actionno = 2140
start = -160,0
mask = 1

[bg140ctrldef]
ctrlid = 2140
looptime = -1

[bg140 credits];テキスト
id = 3140
type = anim
actionno = 3140
start = -160,0
mask = 1

[bg140ctrldef]
ctrlid = 3140
looptime = -1

[bg140 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg140ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;お星様になったさやかちゃん
[scene 15]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 10
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg150

layerall.pos = 0,0
layer0.anim = -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 360

[bg150def]

[bg150 credits];bg
id = 150
type = anim
actionno = 150
start = -160,0
mask = 1

[bg150ctrldef]
ctrlid = 150
looptime = -1

[bg150 credits];ウィンドウ
id = 2150
type = anim
actionno = 2150
start = -160,0
mask = 1

[bg150ctrldef]
ctrlid = 2150
looptime = -1

[bg150 credits];テキスト
id = 3150
type = anim
actionno = 3150
start = -160,0
mask = 1

[bg150ctrldef]
ctrlid = 3150
looptime = -1

[bg150 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg150ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;闇エンド
[scene 16]
fadein.time = 30
fadein.col = 0,0,0
fadeout.time = 100
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg160

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

end.time = 1100


[bg160def]

[bg160 credits];宇宙
id = 1000
type = anim
actionno = 1000
start = -160,-100
mask = 1

[bg160ctrldef]
ctrlid = 1000
looptime = -1

[bg160ctrl]
type = velset
time = 0
x = -0.1

[bg160 credits];星
id = 1100
type = anim
actionno = 1100
start = -210,-100
mask = 1

[bg160ctrldef]
ctrlid = 1100
looptime = -1

[bg160ctrl]
type = velset
time = 0
x = -0.15

[bg160 credits];月
id = 1400
type = anim
actionno = 1400
start = -50,70
mask = 1

[bg160ctrldef]
ctrlid = 1400
looptime = -1

[bg160ctrl]
type = velset
time = 0
x = 0.1
y = 0.11

[bg160ctrl]
type = velset
time = 400
x = 0
y = 0

[bg160 credits];光のリング
id = 1300
type = anim
actionno = 1300
start = 0,120
mask = 1

[bg160ctrldef]
ctrlid = 2100
looptime = -1

[bg160 credits];地球
id = 1200
type = anim
actionno = 1200
start = 0,120
mask = 1

[bg160ctrldef]
ctrlid = 2100
looptime = -1

[bg160 credits];（腕を失ったオクタヴィア）
id = 161
type = anim
actionno = 161
start = -300,-120
mask = 1

[bg160ctrldef]
ctrlid = 161
looptime = -1

[bg160ctrl]
type = velset
time = 300
x = 2
y = 1.5


[bg160 credits];スペースデブリ
id = 162
type = anim
actionno = 162
start = -300,-120
mask = 1

[bg160ctrldef]
ctrlid = 162
looptime = -1

[bg160ctrl]
type = velset
time = 300
x = 1.8
y = 1.2


[bg160 credits];エンドタイトル１
id = 1500
type = anim
actionno = 1500
start = -90,180
mask = 1

[bg160ctrldef]
ctrlid = 1500
looptime = -1

[bg160 credits];エンドタイトル２
id = 1510
type = anim
actionno = 1510
start = 90,180
mask = 1

[bg160ctrldef]
ctrlid = 1510
looptime = -1

[bg160 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg160ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------
;星空のbelieve
[scene 17]
fadein.time = 60
fadein.col = 0,0,0
fadeout.time = 120
fadeout.col = 0,0,0
clearcolor = 0,0,0
bg.name = bg170

layerall.pos = 0,0
layer0.anim =  -1
layer0.offset = 0,0
layer0.starttime = 0

bgm = bgm2.mp3
bgm.loop = 0
volume = 0

end.time = 3700


[bg170def]

[bg170 credits];宇宙
id = 1600
type = anim
actionno = 1600
start = -160,0
mask = 1

[bg170ctrldef]
ctrlid = 1600
looptime = -1

[bg170ctrl]
type = velset
time = 0
x = -0.3

[bg170 credits];星空
id = 1601
type = anim
actionno = 1601
start = -160,0
mask = 1

[bg170ctrldef]
ctrlid = 1601
looptime = -1

[bg170ctrl]
type = velset
time = 0
x = -0.3

[bg170 credits];マミさん
id = 174
type = anim
actionno = 174
start = 3300,0
mask = 1

[bg170ctrldef]
ctrlid = 174
looptime = -1

[bg170ctrl]
type = velset
time = 0
x = -1

[bg170 credits];あんこちゃん
id = 173
type = anim
actionno = 173
start = 600,125
mask = 1

[bg170ctrldef]
ctrlid = 173
looptime = -1

[bg170ctrl]
type = velset
time = 0
x = -1

[bg170ctrl]
type = posadd
time = 800
x = 800

[bg170ctrl]
type = posadd
time = 1600
x = 600

[bg170ctrl]
type = posadd
time = 2400
x = 800

[bg170ctrl]
type = posadd
time = 3200
x = 800

[bg170ctrl]
type = posset;シーン親ではなく自機の初期位置からの相対座標と思われる
time = 3200
y = -125

[bg170 credits];さやかちゃん
id = 170
type = anim
actionno = 170
start = -110,125
mask = 1

[bg170ctrldef]
ctrlid = 170
looptime = -1

[bg170 credits];まどか
id = 171
type = anim
actionno = 171
start = 20,130
mask = 1

[bg170ctrldef]
ctrlid = 171
looptime = -1

[bg170 credits];ほむら
id = 172
type = anim
actionno = 172
start = 103,130
mask = 1

[bg170ctrldef]
ctrlid = 172
looptime = -1

[bg170 credits];まどパン
id = 179
type = anim
actionno = 179
start = 103,130
mask = 1

[bg170ctrldef]
ctrlid = 179
looptime = -1

[bg170 credits];青空
id = 1790
type = anim
actionno = 1790
start = -160,0
mask = 1

[bg170ctrldef]
ctrlid = 1790
looptime = -1

[bg170 credits];恭介カットイン
id = 1820
type = anim
actionno = 1820
start = -160,0
mask = 1

[bg170ctrldef]
ctrlid = 1820
looptime = -1

[bg170 credits];さやかちゃんカットイン
id = 1700
type = anim
actionno = 1700
start = -160,0
mask = 1

[bg170ctrldef]
ctrlid = 1700
looptime = -1

[bg170ctrl]
type = posadd
time = 2400
x = 40

[bg170ctrl]
type = velset
time = 2400
x = -0.5

[bg170 credits];あんこちゃんカットイン
id = 1710
type = anim
actionno = 1710
start = -275,0
mask = 1

[bg170ctrldef]
ctrlid = 1710
looptime = -1

[bg170ctrl]
type = velset
time = 2340
x = 1

[bg170ctrl]
type = velset
time = 2400
x = 0

[bg170ctrl]
type = posset
time = 2400
x = 160

[bg170 credits];クレジット・ベース
id = 4000
type = anim
actionno = 4000
start = -160,0
mask = 1

[bg170ctrldef]
ctrlid = 4000
looptime = -1

[bg170 credits];クレジット・原作
id = 4003
type = anim
actionno = 4003
start = -160,0
mask = 1

[bg170ctrldef]
ctrlid = 4003
looptime = -1

[bg170 credits];フィルム外枠
id = 999
type = anim
actionno = 999
start = -160,0
mask = 1

[bg170ctrldef]
ctrlid = 999
looptime = -1

;------------------------------------------------------------------------
;------------------------------------------------------------------------



;────────────────────────────────────────────────────────────────────────────
;アニメ指定
;────────────────────────────────────────────────────────────────────────────

[begin action 0]
0, 0, 0, 0, -1

[begin action 1]
0, 10, 0, 0, -1, , a

[begin action 2]
0, 20, 0, 0, -1

[begin action 10]
10, 0, 0, 0, -1

[begin action 20]
20, 0, 0, 0, -1

[begin action 30]
30, 0, 0, 0, -1

[begin action 40]
40, 0, 0, 0, -1

[begin action 50]
50, 0, 0, 0, -1

[begin action 60]
60, 0, 0, 0, -1

[begin action 61]
60, 10, 0, 0, -1

[begin action 62]
-1, 0, 0, 0, 200, , a
60, 20, 0, 0, 20, , a
60, 21, 0, 0, 20, , a
60, 22, 0, 0, 20, , a
60, 23, 0, 0, 20, , a
60, 24, 0, 0, -1, , a

[begin action 63]
-1, 0, 0, 0, 300, , a
60, 30, 0, 0, 30, , a
60, 31, 0, 0, 30, , a
60, 32, 0, 0, 30, , a
60, 33, 0, 0, 30, , a
60, 34, 0, 0, -1, , a

[begin action 70]
70, 0, 0, 0, -1

[begin action 71]
70, 10, 0, 0, -1

[begin action 72]
70, 20, 0, 0, -1, , a

[begin action 73]
70, 30, 0, 0, -1

[begin action 80]
80, 0, 0, 0, -1

[begin action 81]
80, 10, 0, 0, -1

[begin action 82]
80, 20, 0, 0, -1, , a

[begin action 83]
80, 30, 0, 0, -1

[begin action 90]
90, 0, 0, 0, -1

[begin action 91]
90, 10, 0, 0, -1

[begin action 92]
90, 20, 0, 0, -1

[begin action 93]
90, 30, 0, 0, -1

[begin action 100]
100, 0, 0, 0, -1

[begin action 101]
100, 10, 0, 0, -1

[begin action 102]
100, 20, 0, 0, -1

[begin action 109]
100, 11, 0, 0, -1, , a

[begin action 110]
110, 0, 0, 0, -1

[begin action 111]
110, 10, 0, 0, -1

[begin action 112]
110, 20, 0, 0, -1

[begin action 120]
120, 0, 0, 0, -1

[begin action 121]
120, 10, 0, 0, -1

[begin action 122]
120, 20, 0, 0, -1

[begin action 130]
130, 0, 0, 0, -1

[begin action 140]
140, 0, 0, 0, -1

[begin action 150]
150, 0, 0, 0, -1

[begin action 151]
150, 10, 0, 0, -1

[begin action 152]
150, 20, 0, 0, -1, , a2

[begin action 153]
150, 30, 0, 0, 60, , a
150, 31, 0, 0, 60, , a
150, 32, 0, 0, 60, , a

[begin action 160]
160, 0, 0, 0, -1

[begin action 161]
-1, 0, 0, 0, 300, , a
160, 10, 0, 0, -1, , a

[begin action 162]
-1, 0, 0, 0, 300, , a
160, 20, 0, 0, -1

[begin action 170]
170, 0, 0, 0, 9
170, 1, 0, 0, 9
170, 2, 0, 0, 8
170, 3, 0, 0, 9
170, 4, 0, 0, 9
170, 5, 0, 0, 9
170, 6, 0, 0, 8
170, 7, 0, 0, 9

[begin action 171]
171, 0, 0, 0, 8, h
171, 1, 0, 0, 7, h
171, 2, 0, 0, 6, h
171, 3, 0, 0, 6, h
171, 4, 0, 0, 6, h
171, 5, 0, 0, 6, h
171, 6, 0, 0, 6, h

[begin action 172]
172, 0, 0, 0, -1, h

[begin action 179]
172, 10, 0, 0, -1, h

[begin action 173]
173, 0, 0, 0, 800, h
173, 1, 0, 0, 800, h
173, 2, 0, 0, 800, h
173, 3, 0, 0, 800, h
173, 4, 0, 0, -1, h

[begin action 174]
174, 0, 0, 0, -1, h

[begin action 999]
999, 0, 0, 0, -1

[begin action 1000]
1000, 0, 0, 0, -1

[begin action 1100]
1100, 0, 0, 0, -1, , a

[begin action 1200]
1200, 2, 0, 0, 60
1200, 1, 0, 0, 30
1200, 0, 0, 0, 140
1200, 1, 0, 0, 30
1200, 2, 0, 0, 30
1200, 3, 0, 0, -1

[begin action 1300]
-1, 0, 0, 0, 60, , a
1300, 1, 0, 0, 30, , a
1300, 0, 0, 0, 140, , a
1300, 1, 0, 0, 30, , a
1300, 2, 0, 0, 30, , a
1300, 3, 0, 0, -1, , a

[begin action 1400]
1400, 0, 0, 0, -1, , a

[begin action 1500]
-1, 0, 0, 0, 550, , a
1500, 0, 0, 0, 10, , a
1500, 1, 0, 0, 10, , a
1500, 2, 0, 0, 10, , a
1500, 3, 0, 0, 10, , a
1500, 4, 0, 0, -1, , a

[begin action 1510]
-1, 0, 0, 0, 700, , a
1510, 0, 0, 0, 10, , a
1510, 1, 0, 0, 10, , a
1510, 2, 0, 0, -1, , a

[begin action 1600]
1600, 0, 0, 0, -1

[begin action 1601]
1600, 1, 0, 0, -1, , a

[begin action 1700]
-1, 0, 0, 0, 2340
1700, 0, 0, 0, 4
1700, 1, 0, 0, 4
1700, 0, 0, 0, 4
1700, 1, 0, 0, 4
1700, 0, 0, 0, 4
1700, 2, 0, 0, 6
1700, 3, 0, 0, 6
1700, 4, 0, 0, 6
1700, 5, 0, 0, 6
1700, 6, 0, 0, 16
1800, 0, 0, 0, 40
-1, 0, 0, 0, -1

[begin action 1710]
-1, 0, 0, 0, 2340
1710, 0, 0, 0, 60
1810, 0, 0, 0, 6
1810, 1, 0, 0, 6
1810, 0, 0, 0, 6
1810, 1, 0, 0, 6
1810, 0, 0, 0, 6
1810, 1, 0, 0, 6
1810, 0, 0, 0, 4
-1, 0, 0, 0, -1

[begin action 1820]
-1, 0, 0, 0, 2400
1820, 0, 0, 0, 40
-1, 0, 0, 0, -1

[begin action 1790]
-1, 0, 0, 0, 2340
1790, 0, 0, 0, 60
1890, 0, 0, 0, 40
-1, 0, 0, 0, -1

[begin action 2000]
-1, 0, 0, 0, 200, , a
2000, 0, 0, 0, 600, , s
-1, 0, 0, 0, -1, , a

[begin action 3000]
-1, 0, 0, 0, 200, , a
3000, 0, 0, 0, 300, , a
3000, 1, 0, 0, 600, , a
-1, 0, 0, 0, -1, , a

[begin action 2010]
-1, 0, 0, 0, 130, , a
2000, 0, 0, 0, -1, , s

[begin action 3010]
-1, 0, 0, 0, 130, , a
3000, 2, 0, 0, -1, , a

[begin action 2020]
-1, 0, 0, 0, 60, , a
2000, 0, 0, 0, -1, , s

[begin action 3020]
-1, 0, 0, 0, 60, , a
3000, 3, 0, 0, 240, , a
-1, 0, 0, 0, 10, , a
3000, 4, 0, 0, -1, , a

[begin action 2030]
-1, 0, 0, 0, 60, , a
2000, 0, 0, 0, -1, , s

[begin action 3030]
-1, 0, 0, 0, 60, , a
3000, 5, 0, 0, -1, , a

[begin action 2040]
-1, 0, 0, 0, 60, , a
2000, 0, 0, 0, -1, , s

[begin action 3040]
-1, 0, 0, 0, 60, , a
3000, 6, 0, 0, -1, , a

[begin action 2070]
-1, 0, 0, 0, 160, , a
2000, 0, 0, 0, -1, , s

[begin action 3070]
-1, 0, 0, 0, 160, , a
3000, 7, 0, 0, -1, , a

[begin action 2080]
-1, 0, 0, 0, 60, , a
2000, 0, 0, 0, -1, , s

[begin action 3080]
-1, 0, 0, 0, 60, , a
3000, 8, 0, 0, -1, , a

[begin action 2090]
-1, 0, 0, 0, 30, , a
2000, 0, 0, 0, -1, , s

[begin action 3090]
-1, 0, 0, 0, 30, , a
3000, 9, 0, 0, -1, , a

[begin action 2100]
-1, 0, 0, 0, 20, , a
2000, 0, 0, 0, -1, , s

[begin action 3100]
-1, 0, 0, 0, 20, , a
3000, 10, 0, 0, 80, , a
-1, 0, 0, 0, 30, , a
3000, 11, 0, 0, 120, , a
-1, 0, 0, 0, 10, , a
3000, 12, 0, 0, -1, , a

[begin action 2120]
-1, 0, 0, 0, 70, , a
2000, 0, 0, 0, -1, , s

[begin action 3120]
-1, 0, 0, 0, 70, , a
3000, 13, 0, 0, -1, , a

[begin action 2130]
-1, 0, 0, 0, 30, , a
2000, 0, 0, 0, -1, , s

[begin action 3130]
-1, 0, 0, 0, 30, , a
3000, 14, 0, 0, 120, , a
-1, 0, 0, 0, 10, , a
3000, 15, 0, 0, -1, , a

[begin action 2140]
-1, 0, 0, 0, 20, , a
2000, 0, 0, 0, -1, , s

[begin action 3140]
-1, 0, 0, 0, 20, , a
3000, 16, 0, 0, -1, , a

[begin action 2150]
-1, 0, 0, 0, 120, , a
2000, 0, 0, 0, -1, , s

[begin action 3150]
-1, 0, 0, 0, 120, , a
3000, 17, 0, 0, -1, , a

[begin action 4000]
-1, 0, 0, 0, 60, , a
4000, 0, 0, 0, 130, , a
-1, 0, 0, 0, 100, , a
4000, 1, 0, 0, 200, , a
-1, 0, 0, 0, 30, , a
4000, 2, 0, 0, 200, , a
-1, 0, 0, 0, 30, , a
4000, 4, 0, 0, 200, , a
-1, 0, 0, 0, 30, , a
4000, 5, 0, 0, 200, , a
-1, 0, 0, 0, 30, , a
4000, 6, 0, 0, 200, , a
-1, 0, 0, 0, 30, , a
4000, 7, 0, 0, 200, , a
-1, 0, 0, 0, 30, , a
4000, 8, 0, 0, 200, , a
-1, 0, 0, 0, 180, , a

4000, 9, 0, 0, 200, , a
-1, 0, 0, 0, 220, , a

4000, 10, 0, 0, 160, , a
-1, 0, 0, 0, 20, , a
4000, 11, 0, 0, 160, , a
-1, 0, 0, 0, 20, , a
4000, 12, 0, 0, 160, , a
-1, 0, 0, 0, 40, , a
4000, 13, 0, 0, 170, , a
-1, 0, 0, 0, 30, , a
4000, 14, 0, 0, 180, , a
-1, 0, 0, 0, 30, , a
4000, 15, 0, 0, 180, , a
-1, 0, 0, 0, -1, , a

[begin action 4003]
-1, 0, 0, 0, 750, , a
4000, 3, 0, 0, 1120, , a
-1, 0, 0, 0, -1, , a