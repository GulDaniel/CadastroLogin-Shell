#simulação simples de cadastro e login
#!/bin/bash

echo "Bem vindo!"
sleep 2

echo
echo "Defina seu nome de usuário:"
read USER
sleep 1

echo
echo "${USER}, defina uma senha de acesso (os caracteres não serão exibidos):"
read -s PSW
sleep 1

echo "${USER}, confirme a senha: (os caracteres não serão exibidos):"
read -s CHECKPSW
sleep 1

if [ "$PSW" != "$CHECKPSW" ];then
    X=$"0"
    while [ $X -lt 2 ] && [ "$PSW" != "$CHECKPSW" ];do
        echo
        echo "Senha não confirmada"
        X=$[$X+1]
        TRY=$((3-X))
        echo "${TRY} tentativa(s) restante(s), insira novamente:"
        read -s CHECKPSW
    done

    if [ "$X" = 2 ] && [ "$PSW" != "$CHECKPSW" ];then
        echo
        echo "Tentativas esgotadas"
        echo "Realize novo cadastro "
        sleep 2
    fi
exit
fi

echo
echo "Usuário e senha confirmados"
sleep 1
echo "Prepare-se para realizar Login..."
sleep 5
clear

echo "####### LOGIN #######"
echo
echo
echo "USUÁRIO:"
read CHECKUSER

if [ "$USER" != "$CHECKUSER" ];then
    Y=$"0"
    while [ $Y -lt 2 ] && [ "$USER" != "$CHECKUSER" ];do
        echo
        echo "Usuário inválido"
        Y=$[$Y+1]
        TRY=$((3-Y))
        echo "${TRY} tentativa(s) restante(s), insira novamente:"
        read CHECKUSER
    done

    if [ "$Y" = 2 ] && [ "$USER" != "$CHECKUSER" ];then
        echo
        echo "Tentativas esgotadas"
        echo "Tente novamente em alguns minutos"
        sleep 2
    fi
exit
fi

echo
echo "SENHA:"
read -s RECHECKPSW
sleep 1

if [ "$PSW" != "$RECHECKPSW" ];then
    Z=$"0"
    while [ $Z -lt 2 ] && [ "$PSW" != "$RECHECKPSW" ];do
        echo
        echo "Senha inválida"
        Z=$[$Z+1]
        TRY=$((3-Z))
        echo "${TRY} tentativa(s) restante(s), insira novamente:"
        read -s RECHECKPSW
    done

    if [ "$Z" = 2 ] && [ "$PSW" != "$RECHECKPSW" ];then
        echo
        echo "Tentativas esgotadas"
        echo "Tente novamente em alguns minutos"
        sleep 2
    fi
exit
fi

echo
echo "LOGIN REALIZADO COM SUCESSO"
sleep 1

echo "Acessando sistema..."
sleep 3
echo "Conectado"
sleep 1
exit
