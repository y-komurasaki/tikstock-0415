# アプリケーション名
<h2>Tik Stock</h2>
<br></br>

# アプリケーション概要

登録商品の在庫管理,チームでスマホPC何処からでも在庫管理ができる。
<br></br>
# URL※
https://tikstock-0415.herokuapp.com/
<br></br>

# テスト用アカウント
Basic認証のIDとパスワード |  export BASIC_AUTH_USER=''
export _AUTH_PASSWORD='2222'

投稿者用のメールアドレスとパスワード   | メールアドレス：test@test.com
                                   パスワード：t123456

その他利用者用のメールアドレスとパスワード | メールアドレス：hoge@hoge.com
                                      パスワード：h123456
<br></br>
# 利用方法
## 商品登録
1.ログインユーザーはトップ画面から新規商品を登録を行う

2.新規登録画面より（商品名、商品情報、在庫数）を入力し登録ボタンを押す

3.一覧画面に登録商品一覧が表示される

## 在庫管理
1.在庫数変更確認したい商品を一覧から検索し在庫管理を行う

2.ログインユーザーは指定した商品の在庫数を変更する
<br></br>
<br></br>

# アプリケーションを作成した背景
日々の業務で消耗品を管理する業務があり、現状は紙の台帳で管理しており事務所にいなければ在庫数の確認や外からでは毎回事務所に電話で確認することが多いのでコミニュケーションコストがかかるなど問題点があった。
スマホからもタイムリーに在庫数をチームで管理でき、ペーパーレスで最新の情報を共有できるアプリがあれば便利だと思い在庫管理アプリを作成した。
<br></br>
<br></br>

# 実装した機能についての画像やGIFおよびその説明※

<h2>スマホ画面</h2>

[![Image from Gyazo](https://i.gyazo.com/b3468ebbb698d5d195286240543c1c3c.gif)](https://gyazo.com/b3468ebbb698d5d195286240543c1c3c)

# DB 設計

<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAk8AAAC/CAYAAADnyjheAAAAAXNSR0IArs4c6QAAOBh0RVh0bXhmaWxlACUzQ214ZmlsZSUzRSUzQ2RpYWdyYW0lMjBpZCUzRCUyMlN2bmFHR19zV3BTUi1peG1GZWhNJTIyJTIwbmFtZSUzRCUyMiVFMyU4MyU5QSVFMyU4MyVCQyVFMyU4MiVCODElMjIlM0UlM0NteEdyYXBoTW9kZWwlMjBkeCUzRCUyMjQ2OCUyMiUyMGR5JTNEJTIyNjI0JTIyJTIwZ3JpZCUzRCUyMjElMjIlMjBncmlkU2l6ZSUzRCUyMjEwJTIyJTIwZ3VpZGVzJTNEJTIyMSUyMiUyMHRvb2x0aXBzJTNEJTIyMSUyMiUyMGNvbm5lY3QlM0QlMjIxJTIyJTIwYXJyb3dzJTNEJTIyMSUyMiUyMGZvbGQlM0QlMjIxJTIyJTIwcGFnZSUzRCUyMjAlMjIlMjBwYWdlU2NhbGUlM0QlMjIxJTIyJTIwcGFnZVdpZHRoJTNEJTIyMTE2OSUyMiUyMHBhZ2VIZWlnaHQlM0QlMjI4MjclMjIlMjBtYXRoJTNEJTIyMCUyMiUyMHNoYWRvdyUzRCUyMjAlMjIlM0UlM0Nyb290JTNFJTNDbXhDZWxsJTIwaWQlM0QlMjIwJTIyJTJGJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjIxJTIyJTIwcGFyZW50JTNEJTIyMCUyMiUyRiUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyMiUyMiUyMHZhbHVlJTNEJTIydXNlcnMlMjIlMjBzdHlsZSUzRCUyMnNoYXBlJTNEdGFibGUlM0JzdGFydFNpemUlM0QzMCUzQmNvbnRhaW5lciUzRDElM0Jjb2xsYXBzaWJsZSUzRDElM0JjaGlsZExheW91dCUzRHRhYmxlTGF5b3V0JTNCZml4ZWRSb3dzJTNEMSUzQnJvd0xpbmVzJTNEMCUzQmZvbnRTdHlsZSUzRDElM0JhbGlnbiUzRGNlbnRlciUzQnJlc2l6ZUxhc3QlM0QxJTNCJTIyJTIwcGFyZW50JTNEJTIyMSUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIweCUzRCUyMjYwJTIyJTIweSUzRCUyMjExNCUyMiUyMHdpZHRoJTNEJTIyMTgwJTIyJTIwaGVpZ2h0JTNEJTIyMTUwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIweCUzRCUyMjkwJTIyJTIweSUzRCUyMjI2NCUyMiUyMHdpZHRoJTNEJTIyNjAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyYWx0ZXJuYXRlQm91bmRzJTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyMyUyMiUyMHZhbHVlJTNEJTIyJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb2xsYXBzaWJsZSUzRDAlM0Jkcm9wVGFyZ2V0JTNEMCUzQnBvaW50ZXJFdmVudHMlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDElM0JyaWdodCUzRDAlM0Jwb2ludHMlM0QlNUIlNUIwJTJDMC41JTVEJTJDJTVCMSUyQzAuNSU1RCU1RCUzQnBvcnRDb25zdHJhaW50JTNEZWFzdHdlc3QlM0IlMjIlMjBwYXJlbnQlM0QlMjIyJTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB5JTNEJTIyMzAlMjIlMjB3aWR0aCUzRCUyMjE4MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUyRiUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNCUyMiUyMHZhbHVlJTNEJTIyUEslMjIlMjBzdHlsZSUzRCUyMnNoYXBlJTNEcGFydGlhbFJlY3RhbmdsZSUzQmNvbm5lY3RhYmxlJTNEMCUzQmZpbGxDb2xvciUzRG5vbmUlM0J0b3AlM0QwJTNCbGVmdCUzRDAlM0Jib3R0b20lM0QwJTNCcmlnaHQlM0QwJTNCZm9udFN0eWxlJTNEMSUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyMyUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIwd2lkdGglM0QlMjIzMCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIwd2lkdGglM0QlMjIzMCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI1JTIyJTIwdmFsdWUlM0QlMjJ1c2VycyUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29ubmVjdGFibGUlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDAlM0JyaWdodCUzRDAlM0JhbGlnbiUzRGxlZnQlM0JzcGFjaW5nTGVmdCUzRDYlM0Jmb250U3R5bGUlM0Q1JTNCb3ZlcmZsb3clM0RoaWRkZW4lM0IlMjIlMjBwYXJlbnQlM0QlMjIzJTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB4JTNEJTIyMzAlMjIlMjB3aWR0aCUzRCUyMjE1MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIwd2lkdGglM0QlMjIxNTAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyYWx0ZXJuYXRlQm91bmRzJTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNiUyMiUyMHZhbHVlJTNEJTIyJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb2xsYXBzaWJsZSUzRDAlM0Jkcm9wVGFyZ2V0JTNEMCUzQnBvaW50ZXJFdmVudHMlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDAlM0JyaWdodCUzRDAlM0Jwb2ludHMlM0QlNUIlNUIwJTJDMC41JTVEJTJDJTVCMSUyQzAuNSU1RCU1RCUzQnBvcnRDb25zdHJhaW50JTNEZWFzdHdlc3QlM0IlMjIlMjBwYXJlbnQlM0QlMjIyJTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB5JTNEJTIyNjAlMjIlMjB3aWR0aCUzRCUyMjE4MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUyRiUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNyUyMiUyMHZhbHVlJTNEJTIyJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmVkaXRhYmxlJTNEMSUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyNiUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIwd2lkdGglM0QlMjIzMCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIwd2lkdGglM0QlMjIzMCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI4JTIyJTIwdmFsdWUlM0QlMjJuYW1lJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmFsaWduJTNEbGVmdCUzQnNwYWNpbmdMZWZ0JTNENiUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyNiUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIweCUzRCUyMjMwJTIyJTIwd2lkdGglM0QlMjIxNTAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlM0UlM0NteFJlY3RhbmdsZSUyMHdpZHRoJTNEJTIyMTUwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmFsdGVybmF0ZUJvdW5kcyUyMiUyRiUzRSUzQyUyRm14R2VvbWV0cnklM0UlM0MlMkZteENlbGwlM0UlM0NteENlbGwlMjBpZCUzRCUyMjklMjIlMjB2YWx1ZSUzRCUyMiUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29sbGFwc2libGUlM0QwJTNCZHJvcFRhcmdldCUzRDAlM0Jwb2ludGVyRXZlbnRzJTNEMCUzQmZpbGxDb2xvciUzRG5vbmUlM0J0b3AlM0QwJTNCbGVmdCUzRDAlM0Jib3R0b20lM0QwJTNCcmlnaHQlM0QwJTNCcG9pbnRzJTNEJTVCJTVCMCUyQzAuNSU1RCUyQyU1QjElMkMwLjUlNUQlNUQlM0Jwb3J0Q29uc3RyYWludCUzRGVhc3R3ZXN0JTNCJTIyJTIwcGFyZW50JTNEJTIyMiUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIweSUzRCUyMjkwJTIyJTIwd2lkdGglM0QlMjIxODAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlMkYlM0UlM0MlMkZteENlbGwlM0UlM0NteENlbGwlMjBpZCUzRCUyMjEwJTIyJTIwdmFsdWUlM0QlMjIlMjIlMjBzdHlsZSUzRCUyMnNoYXBlJTNEcGFydGlhbFJlY3RhbmdsZSUzQmNvbm5lY3RhYmxlJTNEMCUzQmZpbGxDb2xvciUzRG5vbmUlM0J0b3AlM0QwJTNCbGVmdCUzRDAlM0Jib3R0b20lM0QwJTNCcmlnaHQlM0QwJTNCZWRpdGFibGUlM0QxJTNCb3ZlcmZsb3clM0RoaWRkZW4lM0IlMjIlMjBwYXJlbnQlM0QlMjI5JTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB3aWR0aCUzRCUyMjMwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTNFJTNDbXhSZWN0YW5nbGUlMjB3aWR0aCUzRCUyMjMwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmFsdGVybmF0ZUJvdW5kcyUyMiUyRiUzRSUzQyUyRm14R2VvbWV0cnklM0UlM0MlMkZteENlbGwlM0UlM0NteENlbGwlMjBpZCUzRCUyMjExJTIyJTIwdmFsdWUlM0QlMjJlbWFpbCUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29ubmVjdGFibGUlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDAlM0JyaWdodCUzRDAlM0JhbGlnbiUzRGxlZnQlM0JzcGFjaW5nTGVmdCUzRDYlM0JvdmVyZmxvdyUzRGhpZGRlbiUzQiUyMiUyMHBhcmVudCUzRCUyMjklMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHglM0QlMjIzMCUyMiUyMHdpZHRoJTNEJTIyMTUwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTNFJTNDbXhSZWN0YW5nbGUlMjB3aWR0aCUzRCUyMjE1MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjIxMiUyMiUyMHZhbHVlJTNEJTIyJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb2xsYXBzaWJsZSUzRDAlM0Jkcm9wVGFyZ2V0JTNEMCUzQnBvaW50ZXJFdmVudHMlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDAlM0JyaWdodCUzRDAlM0Jwb2ludHMlM0QlNUIlNUIwJTJDMC41JTVEJTJDJTVCMSUyQzAuNSU1RCU1RCUzQnBvcnRDb25zdHJhaW50JTNEZWFzdHdlc3QlM0IlMjIlMjBwYXJlbnQlM0QlMjIyJTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB5JTNEJTIyMTIwJTIyJTIwd2lkdGglM0QlMjIxODAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlMkYlM0UlM0MlMkZteENlbGwlM0UlM0NteENlbGwlMjBpZCUzRCUyMjEzJTIyJTIwdmFsdWUlM0QlMjIlMjIlMjBzdHlsZSUzRCUyMnNoYXBlJTNEcGFydGlhbFJlY3RhbmdsZSUzQmNvbm5lY3RhYmxlJTNEMCUzQmZpbGxDb2xvciUzRG5vbmUlM0J0b3AlM0QwJTNCbGVmdCUzRDAlM0Jib3R0b20lM0QwJTNCcmlnaHQlM0QwJTNCZWRpdGFibGUlM0QxJTNCb3ZlcmZsb3clM0RoaWRkZW4lM0IlMjIlMjBwYXJlbnQlM0QlMjIxMiUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIwd2lkdGglM0QlMjIzMCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIwd2lkdGglM0QlMjIzMCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjIxNCUyMiUyMHZhbHVlJTNEJTIyZW5jcnlwdGVkX3Bhc3N3b3JkJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmFsaWduJTNEbGVmdCUzQnNwYWNpbmdMZWZ0JTNENiUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyMTIlMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHglM0QlMjIzMCUyMiUyMHdpZHRoJTNEJTIyMTUwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTNFJTNDbXhSZWN0YW5nbGUlMjB3aWR0aCUzRCUyMjE1MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI1OCUyMiUyMHZhbHVlJTNEJTIyc3RvY2tzJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHRhYmxlJTNCc3RhcnRTaXplJTNEMzAlM0Jjb250YWluZXIlM0QxJTNCY29sbGFwc2libGUlM0QxJTNCY2hpbGRMYXlvdXQlM0R0YWJsZUxheW91dCUzQmZpeGVkUm93cyUzRDElM0Jyb3dMaW5lcyUzRDAlM0Jmb250U3R5bGUlM0QxJTNCYWxpZ24lM0RjZW50ZXIlM0JyZXNpemVMYXN0JTNEMSUzQiUyMiUyMHBhcmVudCUzRCUyMjElMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHglM0QlMjI0NjAlMjIlMjB5JTNEJTIyMTE0JTIyJTIwd2lkdGglM0QlMjIxODAlMjIlMjBoZWlnaHQlM0QlMjIxODAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTNFJTNDbXhSZWN0YW5nbGUlMjB4JTNEJTIyOTAlMjIlMjB5JTNEJTIyMjY0JTIyJTIwd2lkdGglM0QlMjI2MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI1OSUyMiUyMHZhbHVlJTNEJTIyJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb2xsYXBzaWJsZSUzRDAlM0Jkcm9wVGFyZ2V0JTNEMCUzQnBvaW50ZXJFdmVudHMlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDElM0JyaWdodCUzRDAlM0Jwb2ludHMlM0QlNUIlNUIwJTJDMC41JTVEJTJDJTVCMSUyQzAuNSU1RCU1RCUzQnBvcnRDb25zdHJhaW50JTNEZWFzdHdlc3QlM0IlMjIlMjBwYXJlbnQlM0QlMjI1OCUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIweSUzRCUyMjMwJTIyJTIwd2lkdGglM0QlMjIxODAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlMkYlM0UlM0MlMkZteENlbGwlM0UlM0NteENlbGwlMjBpZCUzRCUyMjYwJTIyJTIwdmFsdWUlM0QlMjJQSyUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29ubmVjdGFibGUlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDAlM0JyaWdodCUzRDAlM0Jmb250U3R5bGUlM0QxJTNCb3ZlcmZsb3clM0RoaWRkZW4lM0IlMjIlMjBwYXJlbnQlM0QlMjI1OSUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIwd2lkdGglM0QlMjIzMCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIwd2lkdGglM0QlMjIzMCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI2MSUyMiUyMHZhbHVlJTNEJTIyc3RvY2tzJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmFsaWduJTNEbGVmdCUzQnNwYWNpbmdMZWZ0JTNENiUzQmZvbnRTdHlsZSUzRDUlM0JvdmVyZmxvdyUzRGhpZGRlbiUzQiUyMiUyMHBhcmVudCUzRCUyMjU5JTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB4JTNEJTIyMzAlMjIlMjB3aWR0aCUzRCUyMjE1MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIwd2lkdGglM0QlMjIxNTAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyYWx0ZXJuYXRlQm91bmRzJTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyOTYlMjIlMjB2YWx1ZSUzRCUyMiUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29sbGFwc2libGUlM0QwJTNCZHJvcFRhcmdldCUzRDAlM0Jwb2ludGVyRXZlbnRzJTNEMCUzQmZpbGxDb2xvciUzRG5vbmUlM0J0b3AlM0QwJTNCbGVmdCUzRDAlM0Jib3R0b20lM0QxJTNCcmlnaHQlM0QwJTNCcG9pbnRzJTNEJTVCJTVCMCUyQzAuNSU1RCUyQyU1QjElMkMwLjUlNUQlNUQlM0Jwb3J0Q29uc3RyYWludCUzRGVhc3R3ZXN0JTNCJTIyJTIwcGFyZW50JTNEJTIyNTglMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHklM0QlMjI2MCUyMiUyMHdpZHRoJTNEJTIyMTgwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTJGJTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI5NyUyMiUyMHZhbHVlJTNEJTIyRkslMjIlMjBzdHlsZSUzRCUyMnNoYXBlJTNEcGFydGlhbFJlY3RhbmdsZSUzQmNvbm5lY3RhYmxlJTNEMCUzQmZpbGxDb2xvciUzRG5vbmUlM0J0b3AlM0QwJTNCbGVmdCUzRDAlM0Jib3R0b20lM0QwJTNCcmlnaHQlM0QwJTNCZm9udFN0eWxlJTNEMSUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyOTYlMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHdpZHRoJTNEJTIyMzAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlM0UlM0NteFJlY3RhbmdsZSUyMHdpZHRoJTNEJTIyMzAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyYWx0ZXJuYXRlQm91bmRzJTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyOTglMjIlMjB2YWx1ZSUzRCUyMnVzZXJzJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmFsaWduJTNEbGVmdCUzQnNwYWNpbmdMZWZ0JTNENiUzQmZvbnRTdHlsZSUzRDUlM0JvdmVyZmxvdyUzRGhpZGRlbiUzQiUyMiUyMHBhcmVudCUzRCUyMjk2JTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB4JTNEJTIyMzAlMjIlMjB3aWR0aCUzRCUyMjE1MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIwd2lkdGglM0QlMjIxNTAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyYWx0ZXJuYXRlQm91bmRzJTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNjIlMjIlMjB2YWx1ZSUzRCUyMiUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29sbGFwc2libGUlM0QwJTNCZHJvcFRhcmdldCUzRDAlM0Jwb2ludGVyRXZlbnRzJTNEMCUzQmZpbGxDb2xvciUzRG5vbmUlM0J0b3AlM0QwJTNCbGVmdCUzRDAlM0Jib3R0b20lM0QwJTNCcmlnaHQlM0QwJTNCcG9pbnRzJTNEJTVCJTVCMCUyQzAuNSU1RCUyQyU1QjElMkMwLjUlNUQlNUQlM0Jwb3J0Q29uc3RyYWludCUzRGVhc3R3ZXN0JTNCJTIyJTIwcGFyZW50JTNEJTIyNTglMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHklM0QlMjI5MCUyMiUyMHdpZHRoJTNEJTIyMTgwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTJGJTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI2MyUyMiUyMHZhbHVlJTNEJTIyJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmVkaXRhYmxlJTNEMSUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyNjIlMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHdpZHRoJTNEJTIyMzAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlM0UlM0NteFJlY3RhbmdsZSUyMHdpZHRoJTNEJTIyMzAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyYWx0ZXJuYXRlQm91bmRzJTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNjQlMjIlMjB2YWx1ZSUzRCUyMml0ZW1fbmFtZSUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29ubmVjdGFibGUlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDAlM0JyaWdodCUzRDAlM0JhbGlnbiUzRGxlZnQlM0JzcGFjaW5nTGVmdCUzRDYlM0JvdmVyZmxvdyUzRGhpZGRlbiUzQiUyMiUyMHBhcmVudCUzRCUyMjYyJTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB4JTNEJTIyMzAlMjIlMjB3aWR0aCUzRCUyMjE1MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUzRSUzQ214UmVjdGFuZ2xlJTIwd2lkdGglM0QlMjIxNTAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyYWx0ZXJuYXRlQm91bmRzJTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNjUlMjIlMjB2YWx1ZSUzRCUyMiUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29sbGFwc2libGUlM0QwJTNCZHJvcFRhcmdldCUzRDAlM0Jwb2ludGVyRXZlbnRzJTNEMCUzQmZpbGxDb2xvciUzRG5vbmUlM0J0b3AlM0QwJTNCbGVmdCUzRDAlM0Jib3R0b20lM0QwJTNCcmlnaHQlM0QwJTNCcG9pbnRzJTNEJTVCJTVCMCUyQzAuNSU1RCUyQyU1QjElMkMwLjUlNUQlNUQlM0Jwb3J0Q29uc3RyYWludCUzRGVhc3R3ZXN0JTNCJTIyJTIwcGFyZW50JTNEJTIyNTglMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHklM0QlMjIxMjAlMjIlMjB3aWR0aCUzRCUyMjE4MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJnZW9tZXRyeSUyMiUyRiUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNjYlMjIlMjB2YWx1ZSUzRCUyMiUyMiUyMHN0eWxlJTNEJTIyc2hhcGUlM0RwYXJ0aWFsUmVjdGFuZ2xlJTNCY29ubmVjdGFibGUlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDAlM0JyaWdodCUzRDAlM0JlZGl0YWJsZSUzRDElM0JvdmVyZmxvdyUzRGhpZGRlbiUzQiUyMiUyMHBhcmVudCUzRCUyMjY1JTIyJTIwdmVydGV4JTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjB3aWR0aCUzRCUyMjMwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTNFJTNDbXhSZWN0YW5nbGUlMjB3aWR0aCUzRCUyMjMwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmFsdGVybmF0ZUJvdW5kcyUyMiUyRiUzRSUzQyUyRm14R2VvbWV0cnklM0UlM0MlMkZteENlbGwlM0UlM0NteENlbGwlMjBpZCUzRCUyMjY3JTIyJTIwdmFsdWUlM0QlMjJpbmZvJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmFsaWduJTNEbGVmdCUzQnNwYWNpbmdMZWZ0JTNENiUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyNjUlMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHglM0QlMjIzMCUyMiUyMHdpZHRoJTNEJTIyMTUwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTNFJTNDbXhSZWN0YW5nbGUlMjB3aWR0aCUzRCUyMjE1MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI2OCUyMiUyMHZhbHVlJTNEJTIyJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb2xsYXBzaWJsZSUzRDAlM0Jkcm9wVGFyZ2V0JTNEMCUzQnBvaW50ZXJFdmVudHMlM0QwJTNCZmlsbENvbG9yJTNEbm9uZSUzQnRvcCUzRDAlM0JsZWZ0JTNEMCUzQmJvdHRvbSUzRDAlM0JyaWdodCUzRDAlM0Jwb2ludHMlM0QlNUIlNUIwJTJDMC41JTVEJTJDJTVCMSUyQzAuNSU1RCU1RCUzQnBvcnRDb25zdHJhaW50JTNEZWFzdHdlc3QlM0IlMjIlMjBwYXJlbnQlM0QlMjI1OCUyMiUyMHZlcnRleCUzRCUyMjElMjIlM0UlM0NteEdlb21ldHJ5JTIweSUzRCUyMjE1MCUyMiUyMHdpZHRoJTNEJTIyMTgwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTJGJTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjI2OSUyMiUyMHZhbHVlJTNEJTIyJTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmVkaXRhYmxlJTNEMSUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyNjglMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHdpZHRoJTNEJTIyMzAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyZ2VvbWV0cnklMjIlM0UlM0NteFJlY3RhbmdsZSUyMHdpZHRoJTNEJTIyMzAlMjIlMjBoZWlnaHQlM0QlMjIzMCUyMiUyMGFzJTNEJTIyYWx0ZXJuYXRlQm91bmRzJTIyJTJGJTNFJTNDJTJGbXhHZW9tZXRyeSUzRSUzQyUyRm14Q2VsbCUzRSUzQ214Q2VsbCUyMGlkJTNEJTIyNzAlMjIlMjB2YWx1ZSUzRCUyMnN0b2NrX3F1YW50aXR5JTIyJTIwc3R5bGUlM0QlMjJzaGFwZSUzRHBhcnRpYWxSZWN0YW5nbGUlM0Jjb25uZWN0YWJsZSUzRDAlM0JmaWxsQ29sb3IlM0Rub25lJTNCdG9wJTNEMCUzQmxlZnQlM0QwJTNCYm90dG9tJTNEMCUzQnJpZ2h0JTNEMCUzQmFsaWduJTNEbGVmdCUzQnNwYWNpbmdMZWZ0JTNENiUzQm92ZXJmbG93JTNEaGlkZGVuJTNCJTIyJTIwcGFyZW50JTNEJTIyNjglMjIlMjB2ZXJ0ZXglM0QlMjIxJTIyJTNFJTNDbXhHZW9tZXRyeSUyMHglM0QlMjIzMCUyMiUyMHdpZHRoJTNEJTIyMTUwJTIyJTIwaGVpZ2h0JTNEJTIyMzAlMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTNFJTNDbXhSZWN0YW5nbGUlMjB3aWR0aCUzRCUyMjE1MCUyMiUyMGhlaWdodCUzRCUyMjMwJTIyJTIwYXMlM0QlMjJhbHRlcm5hdGVCb3VuZHMlMjIlMkYlM0UlM0MlMkZteEdlb21ldHJ5JTNFJTNDJTJGbXhDZWxsJTNFJTNDbXhDZWxsJTIwaWQlM0QlMjIxMDAlMjIlMjBzdHlsZSUzRCUyMmh0bWwlM0QxJTNCZXhpdFglM0QxJTNCZXhpdFklM0QwLjUlM0JleGl0RHglM0QwJTNCZXhpdER5JTNEMCUzQmVudHJ5WCUzRDAlM0JlbnRyeVklM0QwLjUlM0JlbnRyeUR4JTNEMCUzQmVudHJ5RHklM0QwJTNCZW5kQXJyb3clM0RFUm1hbnklM0JlbmRGaWxsJTNEMCUzQiUyMiUyMHBhcmVudCUzRCUyMjElMjIlMjBzb3VyY2UlM0QlMjI2JTIyJTIwdGFyZ2V0JTNEJTIyOTYlMjIlMjBlZGdlJTNEJTIyMSUyMiUzRSUzQ214R2VvbWV0cnklMjByZWxhdGl2ZSUzRCUyMjElMjIlMjBhcyUzRCUyMmdlb21ldHJ5JTIyJTJGJTNFJTNDJTJGbXhDZWxsJTNFJTNDJTJGcm9vdCUzRSUzQyUyRm14R3JhcGhNb2RlbCUzRSUzQyUyRmRpYWdyYW0lM0UlM0MlMkZteGZpbGUlM0Xu9bH5AAAgAElEQVR4Xu2dCbh1Y9nHf4rPUORVKEoZXopShPjMJJlSGUJkiAyRIvNMZklImTIWRUiGj/pEiBLiyzyXoRSvIVNF3/Xf3at2u7PPWuecvdezhv9zXS7v2Wft536e3/0M/3Xfz1pnKlxMwARMwARMwARMwAQKE5iq8JW+0ARMwARMwARMwARMAIsnDwITMAETMAETMAETGAMBi6cxwPKlJmACJmACJmACJmDx5DFgAiZgAiZgAiZgAmMgMKJ4mjx58kP33Xffu8ZQjy81gcoSmDx58sP33Xff3JVtoBtmAg0i4P2jQc50V+i3f/SLPP3973//u7GZQCMITDVVZ5g7ytoIb7oTNSDg/aMGTnITixHot39YPBXj56tqTMDiqcbOc9PrSMDiqY5ec5tHJGDx5IHRWgIWT611vTuehoDFUxrutjoEAhZPQ4DqKutBwOKpHn5yKxtDwOKpMa50RyyePAZaS8DiqbWud8fTELB4SsPdVodAwOJpCFBdZT0IWDzVw09uZWMIWDw1xpXuiMWTx0BrCVg8tdb17ngaAhZPabjb6hAIWDwNAaqrrAcBi6d6+MmtbAwBi6fGuNIdsXjyGGgtAYun1rreHU9DwOIpDXdbHQIBi6chQHWV9SBg8VQPP7mVjSFg8dQYV7ojFk8eA60lYPHUWte742kIWDyNg/vDDz/MRRddxDLLLMNiiy02jhr+8ZUDDjiA/fffn1tuuYVFFllk3PX4i/8gYPHkkdBaAhZPrXW9O56GgMXTOLhfeeWVrLrqqhx11FHsvPPO46jhH1/Za6+9OOSQQ7j55ptZdNFFx12Pv2jxNLQxcN1117H77ruz9dZbs8kmm3D77bez3Xbb8elPf5ptt92WG2+8kRNOOIErrriCxRdfnG222YY111yz057zzjuPww47jEcffZRll12WY489ljnmmIMTTzyRs846iy233LLzb10z7bTT9q1naJ1rUMUWTw1yprtSBwIWT6N46dxzz+X000/n1ltv7Ygl7SEzzDAD66+/PjfddBPzzz9/J3q0wQYbcOqpp3L00Udz5513dvaQww8/nBVXXLFTu/afPffck3vuuYfVVluNLbbYguWWW+7fxNOss87a2Z9UTjrppM5+029PqsPAStFGR56GQP3iiy9m7bXX5uCDD+4MYg1mCaHddtutM/jnmmuujlVNAk2Yl156iccff7wjspZeemlmnHHGzoS46qqrOhNGE2Tfffft3DVkRcJLwmyket74xjcOoVfNq9LiqXk+dY8qTcDiqY97HnjgAeabbz6WXHJJFlpooY44kvCRsNl00007e8HCCy/c2T9effVV1l133U5N2i+uv/76zr/vvfdepptuun/uL6pLN+oqTz75JMccc0xnD7n66qvZaaedOum7M888syPO+u1J3kv6zyeLpyGsNaOJp80335x3v/vdzDPPPJ2JMPPMM/PMM8907hr088knn8zZZ5/d+VlRpssvv7wjvi677LLOwF9rrbU60ahXXnmlbz1zzjnnEHrVvCotnprnU/eo0gQsnvq4RxEn7Q2rrLIKO+64Iy+++GJnjdcNtoRTd9pu5ZVX7nwmEbT88st30nm77LJLJ1I1yyyzsOuuu/4zxXfcccdx6aWX8pWvfIULL7yws4do73nwwQc755/222+/ToSq357kvcTiqdQVpVc8XXvttZ2wqSJPSretvvrqHVGUFUWQvvWtb3WEkSZFb/nud7/Lb37zm87Av+SSS1hjjTU6l/SrR6Fel3wCFk/5jHyFCQyQgMVTH5iKDCk7oeiRirIP++yzT0cU9Z55mn322TuRpJdffrlzdEPRpaWWWop11lkH/U7pN+0jWRovM5mdecp+zsST95LxjXBHnsbHbdRvZYNdKTul7pSa23DDDTviSeFSqf7HHnuMO+64oxNpUr5Z0SYJI117xhlndNJ2Sudpgih197Wvfa0jniTE9NSFJk+/enS2yiWfgMVTPiNfYQIDJGDx1Afm/fff31nTn3jiCa655prO2afnn3+ehx56qCOouiNPSyyxROcM1F133dWJGGnv0A349ttv3/lZ/z///PM7Ykp7kcTVRhttxGmnndbZQ3Stzs+q6Em+6aef3nvJOAa5xdM4oOV9RRNh8uTJnbuHrbbaqnOwT0XiSfnrBRdcsJOr1s8STMprazArVKtDfCussEJngEt4SSBlh/m6xZMmTr96Nt5447wm+vejPGpqOCZgAkMhYPHUB+spp5zS2St0uHu99dbrHOGQ6JGguu222zrpPGUmjjjiiM5rC/bYY4/ODbYE0vHHH9/ZI3QOdu655+7cbGtv0ENKBx54YKeOZ599tnOoPHvaTtfq5l6iau+99/ZeMo7hbvE0Dmh5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" style="cursor:pointer;max-width:100%;" onclick="(function(img){if(img.wnd!=null&&!img.wnd.closed){img.wnd.focus();}else{var r=function(evt){if(evt.data=='ready'&&evt.source==img.wnd){img.wnd.postMessage(decodeURIComponent(img.getAttribute('src')),'*');window.removeEventListener('message',r);}};window.addEventListener('message',r);img.wnd=window.open('https://viewer.diagrams.net/?client=1&page=0&edit=_blank');}})(this);"/>

<br></br>

# 画面遷移図

<br></br>

# 開発環境
HTML・CSS・Ruby・Ruby on Rails・JavaScript・GitHub・Bootstrap
<br></br>

# ローカルでの動作方法※
<br></br>

# 工夫したポイント
スマホからでも対応できるようBootstrapを用いてレスポンシブ対応にし見た目はシンプルで誰でも使いやすいよう意識した。

