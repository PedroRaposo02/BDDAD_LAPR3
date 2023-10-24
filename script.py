import pandas as pd

# Define the CSV file path
excel_file_name = input("Enter the CSV file name:")
excel_file_path = excel_file_name + ".xlsx"

print(f"Reading CSV file...{excel_file_path}")
# print out all the content in the csv
xl = pd.ExcelFile(excel_file_path)

print("Sheet names:", xl.sheet_names)

# Define the output SQL file path
sql_file_path = "output.sql"

# Read Plantas sheet into a DataFrame
df = xl.parse("Plantas")
df.fillna("", inplace=True)

# Open the SQL file
with open(sql_file_path, "w") as f:
    # Iterate over each row in the DataFrame
    for index, row in df.iterrows():
        # Write INSERT INTO statement for each row
        f.write(
            "INSERT INTO Plantas (especie, nome_comum, variedade, tipo_plantacao, data_plantacao, poda, floracao, colheita) VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}');\n".format(
                row["Espécie"],
                row["Nome comum"],
                row["Variedade"],
                row["Tipo Plantação"],
                row["Sementeira/Plantação"],
                row["Poda"],
                row["Floração"],
                row["Colheita"],
            )
        )

df = xl.parse("Fator Produção")
df.fillna("", inplace=True)

with open(sql_file_path, "a") as f:
    for index, row in df.iterrows():
        f.write(
            "INSERT INTO FatorProducao (designacao, fabricante, formato, tipo, aplicacao, c1, perc_c1, c2, perc_c2, c3, perc_c3, c4, perc_c4) VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}');\n".format(
                row["Designação"],
                row["Fabricante"],
                row["Formato"],
                row["Tipo"],
                row["Aplicação"],
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
        f.write(
            "INSERT INTO temp_staging_table (id, tipo, designacao, area, unidade) VALUES ('{}', '{}', '{}', '{}', '{}');\n".format(
                row["ID"],
                row["Tipo"],
                row["Designação"],
                row["Área"],
                row["Unidade"],
            )
        )

df = xl.parse("Culturas")
df.fillna("", inplace=True)

with open(sql_file_path, "a") as f:
    for index, row in df.iterrows():
        f.write(
            "INSERT INTO Culturas (Plantasid, tipo, designacao, area, unidade) VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}');\n".format(
                row["ID"],
                row["Cultura"],
                row["Tipo"],
                row["Data Inicial"],
                row["Data Final"],
                row["Quantidade"],
                row["Unidades"],
            )
        )

print("SQL insert statements generated in", sql_file_path)
