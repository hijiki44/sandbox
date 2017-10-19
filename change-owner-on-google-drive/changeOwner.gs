// スクリプト実行ユーザがオーナーのフォルダ、及び、ファイルについて
// 再帰的に指定したフォルダのオーナーを一括で変更
// ※ 処理に 6 分以上かかるような深い階層には未対応。。

var targetId = "XXX";               // 対象となるフォルダのID
var targetEmail = "hoge@mail.com";  // 新しいオーナーのEmail
var myEmail = "fuga@mail.com";      // スクリプト実行ユーザのEmail

function myFunction() {
  var root = DriveApp.getFolderById(targetId);
  changeOwner(root);
  changeOwners(root);
}

function changeOwner(target) {
  var oldEmail = target.getOwner().getEmail();
  if (oldEmail != myEmail) return;
  var name = target.getName();
  target.setOwner(targetEmail);
  var newEmail = target.getOwner().getEmail();
  target.removeEditor(oldEmail);
}

function changeOwners(parentFolder) {
  var childFiles = parentFolder.getFiles();
  var childFolders = parentFolder.getFolders();
  while(childFiles.hasNext()) {
    var file = childFiles.next();
    changeOwner(file);
  }
  while(childFolders.hasNext()) {
    var folder = childFolders.next();
    changeOwner(folder);
    changeOwners(folder);
  }
}
