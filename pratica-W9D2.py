#!/usr/bin/env python
# coding: utf-8

# In[1]:


#Abbiamo la stringa: nome_scuola = "Epicode" Stampare ogni carattere della stringa, uno su ogni riga, utilizzando un costrutto while.
nome_scuola = "Epicode"
i = 0

while i < len(nome_scuola):
    print(nome_scuola[i])
    i += 1


# In[2]:


#Stampare a video tutti i numeri da 0 a 20 utilizzando il costrutto while.
numero = 0

while numero <= 20:
    print(numero)
    numero += 1


# In[3]:


#Calcolare e stampare tutte le prime 10 potenze di 2 (e.g., 2⁰, 2¹, 2², …) utilizzando un ciclo while.
esponente = 0

while esponente < 10:
    print(f"2^{esponente} = {2**esponente}")
    esponente += 1


# In[4]:


#Calcolare e stampare tutte le prime N potenze di 2 utilizzando un ciclo while, domandando all'utente di inserire N.

N = int(input("Quante potenze di 2 vuoi calcolare? "))

esponente = 0

while esponente < N:
    print(f"2^{esponente} = {2**esponente}")
    esponente += 1


# In[5]:


#Calcolare e stampare tutte le potenze di 2 minori di 25000.

esponente = 0

while 2**esponente < 2500:
    print(f"2^{esponente} = {2**esponente}")
    esponente += 1


# In[2]:


#Scriviamo un programma che chiede in input all'utente una stringa e visualizza i primi 3 caratteri, seguiti da 3 punti di sospensione e quindi gli ultimi 3 caratteri, 

testo = input("Inserisci una stringa: ")

if len(testo) >= 6:
    risultato = testo[:3] + "..." + testo[-3:]

else:
    risultato = testo

print("Risultato:", risultato)


# In[4]:


#Memorizza e stampa tutti i fattori di un numero dato in input (cioè tutti i numeri primi che, moltiplicati tra di loro, danno il numero di partenza).

n = int(input("Inserisci un numero intero: "))

fattori_primi = []
divisore = 2

while n > 1:
    while n % divisore == 0:
        fattori_primi.append(divisore)
        n = n // divisore
    divisore += 1

print("Fattori primi:", fattori_primi)
    


# In[5]:


#Abbiamo la stringa: nome_scuola = "Epicode" Stampare ogni carattere della stringa, uno su ogni riga, utilizzando un costrutto for.

nome_scuola = "Epicode"

for carattere in nome_scuola:
    print(carattere)


# In[6]:


#Calcolare e stampare tutte le prime 10 potenze di 2 utilizzando un ciclo.

for esponente in range(1,11):
    potenza = 2 ** esponente
    print(f"2^{esponente} = {potenza}")


# In[8]:


#Calcolare (ma non stampare) le prime N potenze di K; ognuna di esse andrà memorizzata in coda a una lista. Alla fine, stampare la lista risultante.

#versione con while

K = int(input("Inserisci la base (K): "))
N = int(input("Inserisci il numero di potenze da calcolare (N): "))

potenze = []
i = 1

while i <= N:
    potenze.append(K ** i)
    i += 1

print("Lista delle potenze:", potenze)


# In[9]:


#versione con for

K = int(input("Inserisci la base (K): "))
N = int(input("Inserisci il numero di potenze da calcolare (N): "))

potenze = []

for i in range(1, N + 1):
    potenze.append(K ** i)

print("Lista delle potenze:", potenze)


# In[11]:


#Abbiamo una lista con i guadagni degli ultimi 12 mesi: guadagni = [100, 90, 70, 40, 50, 80, 90, 120, 80, 20, 50, 50] usando un costrutto for, calcolare la media dei guadagni e stamparla a video.

guadagni = [100, 90, 70, 40, 50, 80, 90, 120, 80, 20, 50, 50]

somma = 0

for valore in guadagni:
    somma += valore

media = somma / len(guadagni)

print("La media dei guadagni mensili è:", media)


# In[12]:


#stampiamo, per ogni parola, quante volte appare la lettera "e"; facciamo attenzione al fatto che appare sia maiuscola che minuscola.

parole = ["Albergo", "Sedia", "Borgo", "Petalo", "Eremo", "Belvedere", "Semestre", "Esteta", "Sosta", "Orpello", "Abete", "Orologio", "Cesta", "Ermellino"]

for parola in parole:
    conta_e = parola.lower().count('e')
    print(f"Nella parola '{parola}' ci sono {conta_e} 'e'")


# In[13]:


#Creiamo un dizionario che assegni ad ogni proprietario la sua auto

auto = {
    "Ada" : "Punto",
    "Ben" : "Multipla",
    "Charlie" : "Golf",
    "Debbie" : "107"
}

print("Dizionario completo:", auto)
    


# In[14]:


print("L'auto di Debbie è:", auto["Debbie"])


# In[15]:


#Con un ciclo, e usando il metodo .values(), stampiamo a video tutte le auto che non sono una Multipla.

dizionario_auto = {
    "Ada": "Punto", 
    "Ben": "Multipla", 
    "Charlie": "Golf", 
    "Debbie": "107"
}

for auto in dizionario_auto.values():
    if auto != "Multipla":
        print(auto)


# In[16]:


#Aggiornare il dizionario dizionario_auto con i dati contenuti in nuovi_proprietari e stamparlo. Cosa è successo a Ben?

dizionario_auto = {
    "Ada": "Punto", 
    "Ben": "Multipla", 
    "Charlie": "Golf", 
    "Debbie": "107", 
    "Emily": "A1"
} 

nuovi_proprietari = {
    "Ben": "Polo", 
    "Fred": "Octavia", 
    "Grace": "Yaris", 
    "Hugh": "Clio"
}

dizionario_auto.update(nuovi_proprietari)
print("Dizionario aggiornato:", dizionario_auto)


# In[ ]:


#Ben possedeva una Multipla e ora possiede una Polo


# In[ ]:




