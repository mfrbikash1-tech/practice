import 'dart:io';

class BankAccount{
  String acName;
  int accNum;
  int _balance;

  BankAccount (this.acName,this.accNum,this._balance){
    print("Account Created");
  }

  int getBalance(){
    return _balance;
  }

  int deposite(String tkdeposite){
    int tkdeposite2 = int.parse(tkdeposite);
    if(tkdeposite2 <= 0){
      print('Invalid amount');
    }else{
      _balance = _balance + tkdeposite2; 
      print('Deposite balance: $_balance');
    }
   return getBalance();
  }

  int withdraw(String tk1){
    int tk1Int = int.parse(tk1);
    if(tk1Int>=getBalance()){
      print('Invalid amount');
    }else{
      _balance = _balance - tk1Int;
      print('Remaining balance: ${getBalance()}');
    }
   return getBalance();
  }
   dynamic displayinfo() {
    print('Account Name : $acName');
    print('Account Number : $accNum');
    print('Your Balance remaining : ${getBalance()}');
   }
}



void main(List<String> args) {
BankAccount x=BankAccount("Rahim", 1, 1000);
BankAccount y=BankAccount("Karim", 2, 1500);
x.displayinfo();
y.displayinfo();
print('Enter Your Deposite Amount:');
x.deposite(stdin.readLineSync() ?? '0');
print('Enter Your Withdrawl Amount:');
x.withdraw(stdin.readLineSync() ?? '0');

}
  