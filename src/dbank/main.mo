import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

actor DBank {
  var currentValue: Nat = 300;
  currentValue := 100;

  let id = 4561546515; // let assigned cant be changed
  // Debug.print(debug_show(currentValue));

  public func topUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };

  public func withdrawl(amount: Nat){
    let tempValue:Int = currentValue - amount;  /// written due to warning
    if(tempValue >=0){
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    }
    else{
      Debug.print("There is a issue"); // no need of debug_show coz its a string
    }
    
  }

  // topUp();  
//method 1  
// agar function call command prompt ma thi karvu hoi to first deply and then write "dfx canister call dbank topUp" 


// method 2
// dfx canister call dbank topUP
// dfx canister id __Candid_UI
// http://127.0.0.1:8000/?canisterId=r7inp-6aaaa-aaaaa-aaabq-cai
// now on the site input the id returnd by "dfx canister id dbank"
}