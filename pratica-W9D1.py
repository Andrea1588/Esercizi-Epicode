#!/usr/bin/env python
# coding: utf-8

# In[ ]:


#fare la spesa
#1. entro nel supermercato
#2. prendo il carrello vuoto
#3. riempio il carrello con i prodotti che mi servono
#4. mi dirigo alle casse
#5. pago
#6. svuoto il carrello nel bagagliaio dell'auto
#7. rimetto il carrello nel portacarrelli
#8. salgo in macchina
#9. esco dal parcheggio


# In[ ]:


#riempire il serbatoio dell'auto
#1. parcheggio al benzinaio
#2. apro il serbatoio
#3. prendo la pompa che indica la benzina
#4. inserisco la pompa nel serbatoio
#5. riempio il serbatoio finché è pieno
#6. riaggancio la pompa al distributore
#7. chiudo il serbatoio
#8. pago
#9. entro in auto
#10. avvio l'auto
#11. esco dal benzinaio


# In[ ]:


#acquistare uno snack da un distributore automatico
#1. seleziono sul display lo snack che voglio acquistare
#2. visualizzo l'ammontare richiesto
#3. inserisco il denaro
#4. raccolgo lo snack


# In[1]:


#Abbiamo 25 studenti; memorizzare questo dato in una variabile.
numero_studenti = 25


# In[2]:


#Abbiamo 25 studenti; memorizzare questo dato in una variabile e stamparla a video.
print(numero_studenti)


# In[3]:


#Abbiamo 25 studenti; memorizzare questo dato in una variabile. Arrivano altri 3 studenti; memorizzare questo dato in un'altra variabile.
studenti_iniziali = 25
nuovi_studenti = 3


# In[5]:


#Creare un'altra variabile ancora che conterrà la somma delle prime due, poi stamparla a video.
studenti_totali = studenti_iniziali + nuovi_studenti
print(studenti_totali)


# In[6]:


#Creare una variabile che contiene la stringa "Epicode", quindi stamparla a video.
nome_scuola = "Epicode"
print(nome_scuola)


# In[7]:


#Abbiamo la variabile: x = 10 Incrementarla di 2 e poi moltiplicarla per 3
x = 10
x += 2
x *= 3
print(x)


# In[9]:


#Creiamo le seguenti stringhe, e per ognuna di esse verifichiamone la lunghezza con la funzione len():
str1 = "Windows"
str2 = "Excel"
str3 = "Powerpoint"
str4 = "Word"

print("Lunghezza di stringa 1:", len(str1))
print("Lunghezza di stringa 2:", len(str2))
print("Lunghezza di stringa 3:", len(str3))
print("Lunghezza di stringa 4:", len(str4))


# In[10]:


#Calcolare e stampare a video quanti secondi ci sono in un anno non bisestile.
secondi_in_un_anno = 365 * 24 * 60 * 60
print("Secondi in un anno non bisestile:", secondi_in_un_anno)


# In[17]:


#Abbiamo la seguente stringa: my_string = "I am studying Python"
my_string = "I am studying Python"

print(my_string.upper())

print(my_string.lower())

print(my_string.replace("Python", "a lot"))

print(my_string.strip()) #non cambia nulla perché la stringa non ha spazi extra

print(my_string.split())


# In[18]:


#Abbiamo due liste, una di studenti e una di corsi:
studenti = ["Alex", "Bob", "Cindy", "Dan", "Emma", "Faith", "Grace", "Henry"]
corsi = ["Cybersecurity", "Data Analyst", "Backend", "Frontend", "Data Analyst", "Backend"]


# In[21]:


#alla lista cui mancano dei dati, aggiungiamo i dati mancanti uno alla volta con il metodo .append()
corsi.append("Frontend") #per Grace
corsi.append("Cybersecurity") #per Henry

for studente, corso in zip(studenti, corsi):
    print(f"{studente} segue il corso di {corso}")


# In[ ]:




