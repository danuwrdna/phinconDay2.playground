//: [Previous](@previous)

import Foundation

class ATM{
    
}


class deposit{
    var saldo: Double
    
    init(saldoawal: Double){
        saldo = saldoawal
    }
    func depositkan(jumlah: Double){
        if jumlah > 0 {
            saldo += jumlah
            print("deposit berhasil. saldo sekarang : \(saldo)")
        }
    }
}
let atm = deposit(saldoawal: 1000.0)

atm.depositkan(jumlah: 500.0)
atm.depositkan(jumlah: 200.0)

class withdraw{
    var saldo: Double
    
    init(saldoawal: Double){
        saldo = saldoawal
    }
    func tarikdana(jumlah: Double){
        if jumlah > 0 && jumlah <= saldo {
            saldo -= jumlah
            print("penarikan dana berhasil. saldo sekarang: \(saldo)")
        }else if jumlah <= 0 {
            print("Jumlah penarikan harus lebih dari 0")
        }else{
            print("saldo tidak ada")
            }
        }
    }
let kurang = withdraw (saldoawal: 1000.0)

kurang.tarikdana(jumlah: 100.0)
kurang.tarikdana(jumlah: 1200.0)
kurang.tarikdana(jumlah: -200.0)
class balance{
    var saldo: Double
    init(saldoawal: Double){
        saldo = saldoawal
    }
    func ceksaldo (){
        print("saldo saat ini: \(saldo)")
    }
}
let cek = balance(saldoawal: 1000.0)

cek.ceksaldo()

print("selmat datang")

print("pilih operasi")
print("1. deposit dana")
print("2. withdraw")
print("3. balnce inquiry")

if let choice = readLine(), let selectedoption = Int(choice){
    var atm: Any?
    
    switch selectedoption{
    case 1:
        atm = deposit(saldoawal: 1000.0)
    case 2:
        atm = withdraw(saldoawal: 1000.0)
    case 3:
        atm = ( balance(saldoawal: 100.0))
    default:
        print("pilihan tidak valid")
        
    }

}

//: [Next](@next)
