import io
import os
import pyaudio
import wave
from google.cloud import speech_v1p1beta1 as speech




#Configuration des paramètres pour l'enregistrement vocal

FORMAT = pyaudio.paInt16
CHANNELS = 1
RATE = 16000
CHUNK = 1024
RECORD_SECONDS = 7
WAVE_OUTPUT_FILENAME = "enregistrement.wav"



#Configuration de l'API de reconnaissance vocale Google Cloud

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "/var/lib/asterisk/agi-bin/cloudmala.json"
client = speech.SpeechClient()


#Fonction pour l'enregistrement vocal
def enregistrer():
audio = pyaudio.PyAudio()

stream = audio.open(format=FORMAT, channels=CHANNELS,
                    rate=RATE, input=True,
                    frames_per_buffer=CHUNK)

print("Enregistrement vocal en cours...")

frames = []

for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
    data = stream.read(CHUNK)
    frames.append(data)

stream.stop_stream()
stream.close()
audio.terminate()

waveFile = wave.open(WAVE_OUTPUT_FILENAME, 'wb')
waveFile.setnchannels(CHANNELS)
waveFile.setsampwidth(audio.get_sample_size(FORMAT))
waveFile.setframerate(RATE)
waveFile.writeframes(b''.join(frames))
waveFile.close()

print("Enregistrement terminé: " + WAVE_OUTPUT_FILENAME)



#Fonction pour la reconnaissance vocale

def reconnaissance_vocale():
with io.open(WAVE_OUTPUT_FILENAME, "rb") as f:
content = f.read()
audio = speech.RecognitionAudio(content=content)
config = speech.RecognitionConfig(
    encoding=speech.RecognitionConfig.AudioEncoding.LINEAR16,
    sample_rate_hertz=RATE,
    language_code="fr-FR",
)

response = client.recognize(request={"config": config, "audio": audio})

for result in response.results:
    return result.alternatives[0].transcript


#Programme principal

enregistrer()
reponse = reconnaissance_vocale()
print(reponse)

