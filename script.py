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
        "    v_id_parcela INTEGER;\n"
        "    v_id_cultura INTEGER;\n"
        "    v_id_operacao INTEGER;\n"
        "    v_id_produto INTEGER;\n"
        "BEGIN\n"
    )
    
    lastNome = ""

    for index, row in df.iterrows():
        # Write INSERT INTO statement for each row
        nome = unidecode(row["Nome comum"]).title().strip()
        variedade = unidecode(row["Variedade"]).title().strip()
        tipo_plantacao = unidecode(row["Tipo Plantação"]).title().strip()
        sementeira = unidecode(row["Sementeira/Plantação"]).title().strip()
        poda = unidecode(row["Poda"]).title().strip()
        floracao = unidecode(row["Floração"]).title().strip()
        colheita = unidecode(row["Colheita"]).title().strip()
        
        if nome != lastNome: 
            f.write(
                "INSERT INTO Tipo_Planta (nome) VALUES ('{}') RETURNING id INTO v_id_tipo_planta;\n".format(
                    nome
                )
            )
            lastNome = nome

        f.write(
            "INSERT INTO Planta (nome, tipo_planta_id) VALUES ('{}', v_id_tipo_planta);\n".format(
                variedade
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
        
        selectPlantaId = f"(Select p.id from Planta p join Tipo_Planta tp on p.tipo_planta_id = tp.id where tp.designacao='{nome}' and p.nome='{variedade}')"

        f.write(
            "INSERT INTO Cultura (parcela_id, planta_id, data_inicial, data_final, quantidade, unidades) VALUES ('{}', {}, TIMESTAMP '{}', {}, '{}', '{}');\n".format(
                row["ID"],
                selectPlantaId,
                row["Data Inicial"],
                f"DATE '{row['Data Final']}'" if row["Data Final"] != "NULL" else "''",
                row["Quantidade"],
                row["Unidades"],
            )
        )

df = xl.parse("Operações")
df.fillna("", inplace=True)

with open(sql_file_path, "a") as f:
    for index, row in df.iterrows():
        cultura = unidecode(row["Cultura"]).title().strip()
        nome, variedade = get_nome_variedade_from_cultura(cultura, nome_comum)

        plantaId = f"(Select id from Planta where nome_comum='{nome}' and variedade='{variedade}')"
        parcelaId = row["ID Parcela"]
        
        data = f"TIMESTAMP '{row['Data']}'"
        
        culturaId = f"(Select c.id from Cultura c join Planta p on c.planta_id=p.id where c.planta_id={plantaId} and c.parcela_id={parcelaId} and ((p.tipo_plantacao='Permanente' and {data} > c.data_inicial) or (p.tipo_plantacao='Temporaria' and {data} between c.data_inicial and c.data_final)))"
        
        operacao = unidecode(row["Operação"]).title().strip()
        modo = unidecode(row["Modo"]).title().strip()
        
        fatorProducaoId = f"(Select id from Fator_Producao where designacao='{row['Fator de produção']}')" if row["Fator de produção"] != "" else "''"

        f.write(
            "INSERT INTO Operacao (tipo_operacao, modo, data, quantidade, unidades, fator_producao_id, cultura_id) VALUES ('{}', '{}', {}, '{}', '{}', {}, {});\n".format(
                operacao,
                modo,
                data,
                row["Quantidade"],
                row["Unidade"],
                fatorProducaoId,
                culturaId,
            )
        )

        operacaoId = f"(Select id from Operacao where data={data} and cultura_id={culturaId} and tipo_operacao='{operacao}')"
        
        f.write(
            "Insert INTO Produto (nome, planta_id, operacao_id) VALUES ('{}', {}, {});\n".format(
                f"{variedade}",
                plantaId,
                operacaoId,
            )
        )
        
        f.write(
            "END;\n"
        )


print("SQL insert statements generated in", sql_file_path)
