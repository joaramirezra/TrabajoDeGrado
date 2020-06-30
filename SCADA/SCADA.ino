#include<SoftwareSerial.h> //Included SoftwareSerial Library
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>
#include <NTPClient.h>
#include <FirebaseArduino.h>

const char *red   = "TP-LINK_73476C";
const char *clave = "44392871";
#define FIREBASE_HOST "iot-fitotron.firebaseio.com"
#define FIREBASE_AUTH "gDn7utgPtq5Dr8vwwI5VmatTYZLKZmdfR529O0u7"

//Define NTP Client to get time
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, "pool.ntp.org");

//Started SoftwareSerial at RX and TX pin of ESP8266/NodeMCU
SoftwareSerial capaFisica(2, 0);

String inputString = "";         // cadena que guarda la informacion entrante
char Trama_Entrada[4];
byte buf [4];

void setup() {
  Serial.begin(9600);
  capaFisica.begin(57600);
  // conect to wifi network

  WiFi.begin(red, clave);
  while (WiFi.status() != WL_CONNECTED) delay(500);
  // set up the NTP
  timeClient.begin();
  timeClient.setTimeOffset(-3600 * 5);

  // init conection to firebase
  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
  delay(50);
}

void loop() {
  while (!timeClient.update()) {
    timeClient.forceUpdate();
  }


  if (timeClient.getMinutes() % 1 == 0 && timeClient.getSeconds() < 1) {
    Serial.print("Minutos: ");
    Serial.print(timeClient.getMinutes());
    Serial.println(Firebase.getString("actuatorsFitotron/fan1/name"));
    for (byte i = 0 ; i < 8; i++) leer_variable(i);
    Enviar_Sensado_firebase();
  }
  delay(1000);
}

void Enviar_Sensado_firebase() {
  String sensores[] = {"date", "sensorCO2_1", "sensorCO2_2", "sensorCO2_3", "sensorHum1", "sensorHum2", "sensorHum3",
                       "sensorHumSuelo1", "sensorHumSuelo2", "sensorTemp1", "sensorTemp2", "sensorTemp3"
                      };
  byte valores_sensores[] = {0, 2, 3, 4, 5, 6, 7, 8, 9, 8, 9, 10, 11,13,14,15};
  String hora = leer_Hora();

  // Se crea la trama
  String cadena = "" ;
  cadena += "\{";
  cadena +=  "\"" + sensores[0] + "\":";
  cadena +=  "\"" + hora + "\"" ;
  for (int i = 1 ; i < 12 ; i++) {
    cadena +=  ",\"" + sensores[i] + "\":";
    cadena +=   String(valores_sensores[i])  ;
  }
  cadena += "\}";

  const size_t capacity = 2048;
  DynamicJsonBuffer jsonBuffer(capacity);

  // Parse JSON object
  JsonObject& root = jsonBuffer.parseObject(cadena);
  Firebase.set("dataFitotron/" + hora, root );
}

String leer_Hora() {
  String formattedDate;
  while (!timeClient.update()) timeClient.forceUpdate();
  formattedDate = timeClient.getFormattedDate();
  formattedDate.remove(19);
  return formattedDate;
}
/* Comnicacion con capa fisica */

byte leer_variable(byte numero) {
  // Consideracion, algunos sensores como el DHT22 Necesitan
  // dos segundos minimo para responder
  enviar_A_Capa_Fisica(byte(2), byte(0), byte(numero));
  delay(2000);
  Leer_Trama();
}

byte Encender_actuador(byte numero) {
  enviar_A_Capa_Fisica(byte(1), byte(1), byte(numero));
}

byte Apagar_actuador(byte numero) {
  enviar_A_Capa_Fisica(byte(0), byte(1), byte(numero));
}

byte Estado_actuador(byte numero) {
  enviar_A_Capa_Fisica(byte(2), byte(1), byte(numero));
  Leer_Trama();
}

void Leer_Trama() {
  capaFisica.readBytes(buf, 4);
  if (buf[3] == 127) {
    capaFisica.flush();
    Serial.println(String(buf[0]) + "," + String(buf[1]) + "," + String(buf[2]));
    buf[3] = 0;
  }
}

void enviar_A_Capa_Fisica(byte operacion, byte tipo , byte id) {
  byte buf [4];

  buf[0] = operacion;
  buf[1] = tipo;
  buf[2] = id;
  buf[3] = 127;
  //  capaFisica.write(buf, sizeof(buf));
  capaFisica.write(buf, sizeof(buf));
}
/* Conexion con internet*/





//  for (byte i = 0 ; i < 15; i++)
//    Encender_actuador(i);
//
//  // leer estados
//  for (byte i = 0 ; i < 15; i++) {
//    Estado_actuador(i);
//  }
////  Apagar
//  for (byte i = 0 ; i < 15; i++)
//    Apagar_actuador(i);
//
//  // leer estados
//  for (byte i = 0 ; i < 15; i++) {
//    Estado_actuador(i);
//    Leer_Trama();
//  }
//
//  for (byte i = 0 ; i < 15; i++) {
//    leer_variable(i);
//  }


// time
// https://lastminuteengineers.com/esp8266-ntp-server-date-time-tutorial/
