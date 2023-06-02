import os 
import time

class main():
    def menu():
      #aqui fazemos a criação do menu de interação da qual o usuario escolhera qual ferramenta deseja baixar 
      print("\nOlá seja bem vindo, para instalar basta escolher o que deseja abaixo:\n"
      +"1) IP-Tracer\n"
      +"2) cam Hacker(indisponivel no momento)r\n"
      +"3) Nethunter kex\n"
      +"4) dex2jar\n"
      +"5) Baixar dependencias(EX: python, python 3 etc)")
      escMenu = input("->")
      if escMenu == "1":
        os.system('git clone https://github.com/rajkumardusad/IP-Tracer')
















# aqui é onde fazemos a instalação das dependencias, exemplo: atualização do sistema/diretórios, instalação das principais linguagens utilizadas ex: python, e tambem o git.
    def intalldependencies():
      os.system('clear' + 'cls')
      print("Para qual sistema voce deseja instalar?")
      print("1) Termux")
      print("2) Ubuntu")
      print("3) Kali Linux")
      print("")
      opDist = input('->')
      if opDist == '1':
        Termux()
      if opDist == '2':
        Ubuntu()
      if opDist == '3':
        Kali() 
      else:
        print("Erro opção não encontrada")

    def Termux():
      print('Iniciando sistema de instalação /')
      os.system('clear')
      print('Iniciando sistema de instalação -')
      os.system('clear')
      print('Iniciando sistema de instalação \\')
      os.system('clear')
      print('Iniciando sistema de instalação /')
      os.system('clear')
      print('Iniciando sistema de instalação -')
      os.system('clear')
      print('Iniciando sistema de instalação \\')
      os.system('clear')
      print('Iniciando sistema de instalação /')
      os.system('clear')
      print('Iniciando sistema de instalação -')
      os.system('clear')
      print('Iniciando sistema de instalação \\')
      os.system('clear')
      os.system('pkg install python && pkg install python2')
      os.system('pkg install cmus && pkg install openssh')
      os.system('pkg update && pkg upgrade -y')
      os.system('pkg install w3m')
      os.system('pkg install play-audio')
      os.system('pkg install python3')
      os.system('pkg install git')
      os.system('pkg install wget')

      
    def Ubuntu():
      return
    
    def Kali():
      return
 


main.menu()
