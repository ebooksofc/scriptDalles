import time
import os

def clear_terminal():
    # Função para limpar a tela do terminal
    if os.name == 'nt':
        os.system('cls')
    else:
        os.system('clear')

def print_colorful_text(text, color):
    # Função para imprimir texto colorido
    colors = {
        'blue': '\033[94m',
        'green': '\033[92m',
        'yellow': '\033[93m',
        'end': '\033[0m'
    }
    print(f"{colors[color]}{text}{colors['end']}")

def print_ascii_art():
    # Função para imprimir a arte ASCII
    ascii_art = """
    <Soldierx64 and TheDallesx64>
    """
    print(ascii_art)

def instaban_user():
    # Função para banir o usuário
    username = input("Digite o nome de usuário: ")
    print_colorful_text(f"[{time.strftime('%H:%M')}] - [InstaBan]$@{username}", 'yellow')
    print_colorful_text("[ENVIANDO SPAM]", 'green')
    start_time = time.time()
    end_time = start_time + 30  # Tempo total de execução: 30 segundos

    while time.time() < end_time:
        print_colorful_text("[ENVIANDO SPAM]", 'green')
        time.sleep(1)

    ban_successful = True  # Decida aqui se o usuário foi banido com sucesso ou não
    if ban_successful:
        print_colorful_text("[USUÁRIO BANIDO COM SUCESSO]", 'green')
    else:
        print_colorful_text("[NÃO FOI POSSÍVEL BANIR O USUÁRIO]", 'green')

    input("Pressione Enter para continuar.")

def main_menu():
    while True:
        clear_terminal()
        print_ascii_art()
        print("\nEscolha uma opção:")
        print("1. InstaBan")
        print("2. Sair")

        option = input("Opção: ")
        if option == "1":
            instaban_user()
        elif option == "2":
            break
        else:
            input("Opção inválida. Pressione Enter para continuar.")

if __name__ == "__main__":
    main_menu()
