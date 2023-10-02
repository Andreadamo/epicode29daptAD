import pandas as pd

# Scarica il dataset da GitHub

Covid_dataset=pd.read_csv("C:/Users/andre/OneDrive/Desktop/DATABASE/owid-covid-data.csv")

# Verifica le dimensioni del dataset e le diciture nell'intestazione
print("Dimensioni del dataset:",Covid_dataset.shape)
print("Intestazione del dataset:",Covid_dataset.columns)

# Filtra le righe senza continente

Covid_dataset= Covid_dataset.dropna(subset=['continent'])

print(Covid_dataset)

# Calcola il numero totale di casi COVID-19 per ogni continente

total_cases_by_continent = Covid_dataset.groupby(['continent','location'])['total_cases'].aggregate("max")
print(total_cases_by_continent.groupby('continent').aggregate("sum"))
print("\n")

# Calcola il numero totale di vaccinazioni per ogni continente

total_vaccinations_by_continent = Covid_dataset.groupby(['continent','location'])['total_vaccinations'].aggregate("max")
print(total_vaccinations_by_continent.groupby('continent').aggregate("sum"))
print("\n")


# Funzione per confrontare i descrittori statistici tra due continenti di casi totali e vaccinazione

def calcolo_statistico_casi(dataset, continent1): 
    df_filtered = dataset[(dataset["continent"] == continent1)]   
    min_cases = df_filtered["total_cases"].min()
    max_cases = df_filtered["total_cases"].max()
    mean_cases = df_filtered["total_cases"].mean()
    total_world_cases = dataset["total_cases"].sum()
    percent_cases = (df_filtered["total_cases"].sum() / total_world_cases) * 100
    return min_cases, max_cases, mean_cases, percent_cases
    
continent1 = "Europe"
continent2 = "South America"
continent3="Oceania"


min_cases, max_cases, mean_cases, percent_cases = calcolo_statistico_casi(Covid_dataset, continent1) 
print(f"Statistiche per {continent1} (Casi di COVID-19):")
print(f"Valore minimo di casi: {min_cases:,.1f}")
print(f"Valore massimo di casi: {max_cases:,.1f}")
print(f"Media dei casi: {mean_cases:,.1f}")
print(f"Percentuale rispetto al mondo: {percent_cases:,.1f}%")
print("\n") 

min_cases, max_cases, mean_cases, percent_cases = calcolo_statistico_casi(Covid_dataset, continent2) 
print(f"Statistiche per {continent2} (Casi di COVID-19):")
print(f"Valore minimo di casi: {min_cases:,.1f}")
print(f"Valore massimo di casi: {max_cases:,.1f}")
print(f"Media dei casi: {mean_cases:,.1f}")
print(f"Percentuale rispetto al mondo: {percent_cases:,.1f}%") 
print("\n") 

min_cases, max_cases, mean_cases, percent_cases = calcolo_statistico_casi(Covid_dataset, continent3) 
print(f"Statistiche per {continent3} (Casi di COVID-19):")
print(f"Valore minimo di casi: {min_cases:,.1f}")
print(f"Valore massimo di casi: {max_cases:,.1f}")
print(f"Media dei casi: {mean_cases:,.1f}")
print(f"Percentuale rispetto al mondo: {percent_cases:,.1f}%") 
print("\n") 

def calcolo_statistico_vaccinazioni (dataset, continent1):
    df_filtered = dataset[(dataset["continent"] == continent1)]
    min_vaccinations = df_filtered["total_vaccinations"].min()
    max_vaccinations = df_filtered["total_vaccinations"].max()
    mean_vaccinations = df_filtered["total_vaccinations"].mean()
    total_world_vaccinations = dataset["total_vaccinations"].sum()
    percent_vaccinations = (df_filtered["total_vaccinations"].sum() / total_world_vaccinations) * 100
    return min_vaccinations, max_vaccinations, mean_vaccinations, percent_vaccinations

min_cases, max_cases, mean_cases, percent_cases = calcolo_statistico_vaccinazioni(Covid_dataset, continent1) 
print(f"Statistiche vaccinazioni {continent1} (Vaccinazioni Covid-19):")
print(f"Valore minimo di vaccinazioni: {min_cases:,.1f}")
print(f"Valore massimo di vaccinazioni: {max_cases:,.1f}")
print(f"Media vaccinazioni: {mean_cases:,.1f}")
print(f"Percentuale rispetto al mondo: {percent_cases:,.1f}%")
print("\n") 

min_cases, max_cases, mean_cases, percent_cases = calcolo_statistico_vaccinazioni(Covid_dataset, continent2) 
print(f"Statistiche vaccinazioni {continent2} (Vaccinazioni COVID-19):")
print(f"Valore minimo di vaccini: {min_cases:,.1f}")
print(f"Valore massimo di vaccini: {max_cases:,.1f}")
print(f"Media dei vaccini: {mean_cases:,.1f}")
print(f"Percentuale vaccini rispetto al mondo: {percent_cases:,.1f}%") 
print("\n") 

min_cases, max_cases, mean_cases, percent_cases = calcolo_statistico_vaccinazioni(Covid_dataset, continent3) 
print(f"Statistiche vaccinazioni {continent3} (Vaccinazioni COVID-19):")
print(f"Valore minimo di vaccinazioni: {min_cases:,.1f}")
print(f"Valore massimo di vaccinazioni: {max_cases:,.1f}")
print(f"Media dei vaccinazioni: {mean_cases:,.1f}")
print(f"Percentuale rispetto al mondo: {percent_cases:,.1f}%") 
print("\n") 

#commento riassuntivo

'''Considerando i risultati ottenuti dalla stampa a video delle funzione e comparando le statistiche possiamo notare come in Europa
 ci siano stati il 33% di casi covid registrati comparati con quasi la metà del Sud America(da capire se i dati sono affidabili o meno considerando la provenienza) e l'1,5% dell' Oceania
 Inoltre notiamo come, in percentuale in Europa ci siano state più vaccinazioni, ma relative al numero di contagi, in Sud America registriamo la metà di vaccinati, mentre in Europa " solo 1/3'''