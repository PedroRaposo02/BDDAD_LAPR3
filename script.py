import pandas as pd
from collections import defaultdict
import re
from unidecode import unidecode


# Define the CSV file path
excel_file_name = input("Enter the CSV file name:")

excel_file_path = excel_file_name + ".xlsx"

print(f"Reading CSV file...{excel_file_path}")

# print out all the content in the csv
xl = pd.ExcelFile(excel_file_path)

# Define the output SQL file path
sql_file_path = "output.sql"

# Read Plantas sheet into a DataFrame
df = xl.parse("Plantas")

df.fillna("", inplace=True)

nome_comum = defaultdict(list)


def get_nome_variedade_from_cultura(cultura: str, nome_comum: dict):
    for nome in nome_comum:
        for variedade in nome_comum[nome]:
            if (
                variedade in cultura
                and nome in cultura
            ) or variedade == cultura:
                return nome, variedade
    return "", ""


# Open the SQL file
with open(sql_file_path, "w") as f:
    # Iterate over each row in the DataFrame
    
    f.write(
        "DECLARE\n"
        "    v_id_tipo_planta INTEGER;\n"
        "    v_id_planta INTEGER;\n"
        "    v_id_fator_producao INTEGER;\n"
        "    v_id_componente INTEGER;\n"
        "    v_id_modo_afp INTEGER;\n"
        "    v_id_parcela INTEGER;\n"
        "    v_id_cultura INTEGER;\n"
        "    v_id_operacao INTEGER;\n"
        "    v_id_produto INTEGER;\n"
        "BEGIN\n"
    )
    
    lastNome = ""

    for index, row in df.iterrows():
        nome = unidecode(row["Nome comum"]).title().strip()
        variedade = unidecode(row["Variedade"]).title().strip()
        tipo_plantacao = unidecode(row["Tipo Plantação"]).title().strip()
        
        # if the variedade is WELL'SPUR DELICIOUS, remove the '
        if variedade == "Well'Spur Delicious":
            variedade = "WellSpur Delicious"
                
        if nome != lastNome: 
            f.write(
                "INSERT INTO Tipo_Planta (nome) VALUES ('{}') RETURNING id INTO v_id_tipo_planta;\n".format(
                    nome
                )
            )
            lastNome = nome

        f.write(
            "INSERT INTO Planta (nome, tipo_planta_id, tipo_plantacao) VALUES ('{}', v_id_tipo_planta, '{}');\n".format(
                variedade,
                tipo_plantacao
            )
        )
        # save all the entries "nome comum" and "variedade" in a list
        nome_comum[nome].append(variedade)

df = xl.parse("Fator Produção")
df.fillna("", inplace=True)

with open(sql_file_path, "a") as f:
    for index, row in df.iterrows():

        formato = unidecode(row["Formato"]).title().strip()
        tipo = unidecode(row["Tipo"]).title().strip()
        aplicacao = unidecode(row["Aplicação"]).title().strip()

        f.write(
            "INSERT INTO Fator_Producao (designacao, fabricante, formato, tipo, aplicacao) VALUES ('{}', '{}', '{}', '{}', '{}') RETURNING INTO v_id_fator_producao;\n".format(
                row["Designação"],
                row["Fabricante"],
                formato,
                tipo,
                aplicacao
            )
        )    
        c1 = row['C1']
        perc_c1 = row['Perc.1']
        
        if c1 != "" and perc_c1 != "":
            f.write(
                "INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, '{}', '{}');\n".format(
                    c1,
                    perc_c1
                )
            )
        
        c2 = row['C2']
        perc_c2 = row['Perc.2']
        if c2 != "" and perc_c2 != "":
            f.write(
                "INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, '{}', '{}');\n".format(
                    c2,
                    perc_c2
                )
            )
            
        c3 = row['C3']
        perc_c3 = row['Perc.3']
        
        if c3 != "" and perc_c3 != "":
            f.write(
                "INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, '{}', '{}');\n".format(
                    c3,
                    perc_c3
                )
            )
            
        c4 = row['C4']
        perc_c4 = row['Perc.4']
        
        if c4 != "" and perc_c4 != "":
            f.write(
                "INSERT INTO Componente (fator_producao_id, componente, percentagem) VALUES (v_id_fator_producao, '{}', '{}');\n".format(
                    c4,
                    perc_c4
                )
            )
        

df = xl.parse("Exploração agrícola")
df.fillna("", inplace=True)

with open(sql_file_path, "a") as f:
    for index, row in df.iterrows():

        tipo = unidecode(row["Tipo"]).title().strip()

        if(tipo != "Parcela"):
            continue
        
        designacao = unidecode(row["Designação"]).title().strip()

        f.write(
            "INSERT INTO Parcela_Agricola (id, designacao, area) VALUES ('{}', '{}', '{}');\n".format(
                row["ID"],
                designacao,
                row["Dimensão"],
            )
        )

df = xl.parse("Culturas")
df.fillna("", inplace=True)
# fix date format appearing as NaT when reading it is null in the excel file
df["Data Final"] = df["Data Final"].apply(
    lambda x: x.strftime("%Y-%m-%d") if not pd.isnull(x) else "NULL"
)

with open(sql_file_path, "a") as f:
    for index, row in df.iterrows():
        cultura = unidecode(row["Cultura"]).title().strip()
        
        nome, variedade = get_nome_variedade_from_cultura(cultura, nome_comum)
        
        f.write(f"Select p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='{nome}' and p.nome='{variedade}'")

        f.write(
            "INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final, quantidade, unidades) VALUES ('{}', v_id_planta, TIMESTAMP '{}', '{}') RETURNING ID INTO v_id_cultura;\n".format(
                row["ID"],
                row["Data Inicial"],
                f"DATE '{row['Data Final']}'" if row["Data Final"] != "NULL" else "''",
            )
        )
        
        if row["Unidades"] == 'un':
            f.write(
                "INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '{}', 'sucedida') RETURNING ID INTO v_id_operacao;\n".format(
                    row["Data Inicial"]
                )
            )
            f.write(
                f"INSERT INTO Plantacao (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, {row['Quantidade']})"
            )


df = xl.parse("Operações")
df.fillna("", inplace=True)

with open(sql_file_path, "a") as f:
    
    modos = []
    
    for index, row in df.iterrows():

        operacao = unidecode(row["Operação"]).title().strip()
        
        data = row['Data']
        
        f.write(
            f"INSERT INTO OPERACAO (data, estado) VALUES (TIMESTAMP '{data}', 'sucedida') RETURNING ID INTO v_id_operacao;\n"
        )
        
        cultura = unidecode(row["Cultura"]).title().strip()
        nome, variedade = get_nome_variedade_from_cultura(cultura, nome_comum)
        
        parcelaId = row["ID Parcela"]
            
        # fetch the planta id
        f.write(
            f"SELECT p.id INTO v_id_planta from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='{nome}' and p.nome='{variedade}';\n"
        )
            
        # fetch the cultura id
        f.write(
            f"SELECT c.id INTO v_id_cultura from Cultura c join Planta p on c.planta_id=p.id where c.planta_id=v_id_planta and c.parcela_id={parcelaId} and ((p.tipo_plantacao='Permanente' and TIMESTAMP '{data}' > c.data_inicial) or (p.tipo_plantacao='Temporaria' and TIMESTAMP '{data}' between c.data_inicial and c.data_final));\n"
        )
        
        quantidade = row["Quantidade"]
        
        if operacao == "Plantacao":  
            f.write(
                f"INSERT INTO PLANTACAO (operacao_id, cultura_id, num_plantas) VALUES (v_id_operacao, v_id_cultura, {quantidade});\n"
            )
        elif operacao == "Rega":
            continue
        elif operacao == "Fertilizacao" or operacao == "Aplicacao Fitofarmaco":
            f.write(
                f"INSERT INTO APLICACAO_FP (operacao_id) values (v_id_operacao);\n"
            )
            
            fator_producao = unidecode(row["Fator de produção"]).title().strip()
            
            f.write(
                f"SELECT id INTO v_id_fator_producao from Fator_Producao where designacao='{fator_producao}';\n"
            )
            
            f.write(
                f"INSERT INTO FP_Aplicados (operacao_id, fp_id, quantidade) values (v_id_operacao, v_id_fator_producao, {quantidade});\n"
            )
            
            if operacao == "Fertilizacao":
                modo = unidecode(row["Modo"]).title().strip()
                if modo not in modos:
                    f.write(
                        f"INSERT INTO Modo_AFP (designacao) VALUES ('{modo}');\n"
                    )
                    modos.append(modo)

                f.write(
                    f"SELECT id INTO v_id_modo_afp from Modo_AFP where designacao='{modo}';\n"
                )
                
                f.write(
                    f"INSERT INTO Aplicacao_FP_Cultura (operacao_id, cultura_id, modo_afp_id) values (v_id_operacao, v_id_cultura, v_id_modo_afp);\n"
                )
        elif operacao == "Poda":
            f.write(
                f"INSERT INTO Poda (operacao_id, cultura_id, quantidade) values (v_id_operacao, v_id_cultura, {quantidade});\n"
            )
        elif operacao == "Colheita":
            f.write(
                f"INSERT INTO Produto (designacao, planta_id) VALUES ('{nome}', v_id_planta) RETURNING INTO v_id_produto;\n"
            )
            
            f.write(
                f"INSERT INTO Colheita (operacao_id, cultura_id, produto_id, quantidade) values (v_id_operacao, v_id_cultura, v_id_produto, {quantidade});\n"
            )
        
        elif operacao == "Sementeira":
            f.write(
                f"INSERT INTO Semeadura (operacao_id, cultura_id, quantidade_semente) values (v_id_operacao, v_id_cultura, {quantidade});\n"
            )
        
        elif operacao == "Incorporacao No Solo":
            f.write(
                f"INSERT INTO Movimentacao_Solo (operacao_id, parcela_id, area) values (v_id_operacao, {parcelaId}, {quantidade});\n"
            )
        
        else:
            print("Operação não reconhecida:", operacao)
            continue
        
    f.write(
        "COMMIT;\n"
    )
    f.write(
        "END;\n"
    )


print("SQL insert statements generated in", sql_file_path)
