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

    for index, row in df.iterrows():
        # Write INSERT INTO statement for each row
        nome = unidecode(row["Nome comum"]).title().strip()
        variedade = unidecode(row["Variedade"]).title().strip()
        tipo_plantacao = unidecode(row["Tipo Plantação"]).title().strip()
        sementeira = unidecode(row["Sementeira/Plantação"]).title().strip()
        poda = unidecode(row["Poda"]).title().strip()
        floracao = unidecode(row["Floração"]).title().strip()
        colheita = unidecode(row["Colheita"]).title().strip()

        f.write(
            "INSERT INTO Plantas (especie, nome_comum, variedade, tipo_plantacao, data_plantacao, poda, floracao, colheita) VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}');\n".format(
                row["Espécie"],
                nome,
                variedade,
                tipo_plantacao,
                sementeira,
                poda,
                floracao,
                colheita,
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
            "INSERT INTO FatorProducao (designacao, fabricante, formato, tipo, aplicacao, c1, perc_c1, c2, perc_c2, c3, perc_c3, c4, perc_c4) VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}');\n".format(
                row["Designação"],
                row["Fabricante"],
                formato,
                tipo,
                aplicacao,
                row["C1"],
                row["Perc.1"],
                row["C2"],
                row["Perc.2"],
                row["C3"],
                row["Perc.3"],
                row["C4"],
                row["Perc.4"],
            )
        )

df = xl.parse("Exploração agrícola")
df.fillna("", inplace=True)

with open(sql_file_path, "a") as f:
    for index, row in df.iterrows():

        tipo = unidecode(row["Tipo"]).title().strip()
        designacao = unidecode(row["Designação"]).title().strip()

        f.write(
            "INSERT INTO ExploracaoAgricola (id, tipo, designacao, area, unidade) VALUES ('{}', '{}', '{}', '{}', '{}');\n".format(
                row["ID"],
                tipo,
                designacao,
                row["Dimensão"],
                row["Unidade"],
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

        f.write(
            "INSERT INTO Culturas (exploracao_agricola_id, planta_id, data_inicial, data_final, quantidade, unidades) VALUES ('{}', {}, TIMESTAMP '{}', {}, '{}', '{}');\n".format(
                row["ID"],
                f"(Select id from Plantas where nome_comum='{nome}' and variedade='{variedade}')",
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
        
        operacao = unidecode(row["Operação"]).title().strip()

        f.write(
            "INSERT INTO Operacoes (operacao, modo, data, quantidade, unidades, fator_producao_id, exploracao_agricola_id, planta_id) VALUES ('{}', '{}', {}, '{}', '{}', {}, {}, {});\n".format(
                operacao,
                row["Modo"],
                f"TIMESTAMP '{row['Data']}'",
                row["Quantidade"],
                row["Unidade"],
                f"(Select id from FatorProducao where designacao='{row['Fator de produção']}')" if row["Fator de produção"] != "" else "''",
                row["ID Parcela"],
                f"(Select id from Plantas where nome_comum='{nome}' and variedade='{variedade}')",
            )
        )


print("SQL insert statements generated in", sql_file_path)
