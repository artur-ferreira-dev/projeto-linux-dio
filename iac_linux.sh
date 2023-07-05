#!/bin/bash

if [ "$EUID" -ne 0 ];then
    echo "Por favor execute esse script como usuário root"
    exit 1
fi

echo "Criando as pastas..."
mkdir /publico
echo "Pasta publico criada na raiz do sistema"
mkdir /adm
echo "Pasta adm criada na raiz do sistema"
mkdir /sec
echo "Pasta sec criada na raiz do sistema"
mkdir /ven
echo "Pasta ven criada na raiz do sistema"


echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos GRP_ADM, GRP_VEN, GRP_SEC criados"

echo "Criando os usuários..."
useradd carlos -m -s /bin/bash -G GRP_ADM -c "Carlos Nascimento" -p $(openssl passwd Senha123)
useradd maria -m -s /bin/bash -G GRP_ADM -c "Maria das Graças" -p $(openssl passwd Senha123)
useradd joao -m -s /bin/bash -G GRP_ADM -c "Joao Pedro" -p $(openssl password Senha123)

useradd debora -m -s /bin/bash -G GRP_VEN -c "Debora Dias" -p $(openssl passwd Senha123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -c "Sebastiana Lopes" -p $(openssl passwd Senha123)
useradd roberto -m -s /bin/bash -G GRP_VEN -c "Roberto Fernando" -p $(openssl passwd Senha123)

useradd josefina -m -s /bin/bash -G GRP_SEC -c "Josefina Fernandes" -p $(openssl passwd Senha123)
useradd amanda -m -s /bin/bash -G GRP_SEC -c "Amanda Nunes" -p $(openssl passwd Senha123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -c "Rogerio Silva" -p $(openssl passwd Senha123)
echo "Usuários criados"

echo "Definindo as permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!"

