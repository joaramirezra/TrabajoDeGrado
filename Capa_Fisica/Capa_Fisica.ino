#include "actuador.h"
#include "SensorAnalogo.h"
#include <DHT.h>;

#define Cantidad_actuadores 9
#define num_Sensor_HS 2
#define DHTTYPE DHT22   // DHT 22  (AM2302)

String inputString = "";         // cadena que guarda la informacion entrante
boolean stringComplete = false;  // Lectura completa
char Trama_Entrada[4];
byte buf [4];

byte accion_Entrada, tipo_Entrada, id_Entrada;

actuador Lista_Actuadores[Cantidad_actuadores];
Sensor_Analogo Sensores_HS[num_Sensor_HS];
DHT Sensor_dht1(10, DHTTYPE);
DHT Sensor_dht2(11, DHTTYPE);

void setup() {
  Inicializar_Actuadores();
  Inicializar_Sensores();
  Serial.begin(57600);
  inputString.reserve(20);
}

void loop() {
  if (stringComplete) {
    Leer_trama();
    if (accion_Entrada == 1 && tipo_Entrada == 1) {
      if (id_Entrada != 2 & id_Entrada != 3 & id_Entrada != 4 )
        Activar_Actuador(id_Entrada);
    }

    else if (accion_Entrada == 0 && tipo_Entrada == 1) {
      Desactivar_Actuador(id_Entrada);
    }

    else if (accion_Entrada == 2 && tipo_Entrada == 1) {
      Respuesta_Actuador(id_Entrada);
    }

    else if (accion_Entrada == 2 && tipo_Entrada == 0) {
      byte val = 0;
      switch (id_Entrada) {
        case 1: // sensar temperatura ambiente 1
          val = Sensar_DHT(0, 1);
          break;
        case 2: // sensar Humedad ambiente 1
          val = Sensar_DHT(0, 2);
          break;
        case 3: // sensar temperatura ambiente 2
          val = Sensar_DHT(1, 1);
          break;
        case 4: // sensar Humedad ambiente 2
          val = Sensar_DHT(1, 2);
          break;
        case 5: // sensar humedad suelo 1
          val = Sensores_HS[0].Sensar();
          break;
        case 6: // sensar humedad suelo 2
          val = Sensores_HS[1].Sensar();
          break;
        default:
          val = 127;
          break;
      }
      Enviar_Trama(tipo_Entrada, id_Entrada, val);
    }
    else {
      Enviar_Trama(127, 127, 127);
    }
  }
}

float Sensar_DHT(byte id, byte variable) {
  float valor = 0;

  Activar_Actuador(4);
  Sensor_dht1.begin();
  Sensor_dht2.begin();
  delay(2000);

  if (variable == 1) { // Sensar temperatura
    if (id == 0) valor = Sensor_dht1.readTemperature();
    else if (id == 1) valor = Sensor_dht2.readTemperature();
    else valor = 127;
  }
  else if (variable == 2) { // Sensar Humedad
    if (id == 0) valor = Sensor_dht1.readHumidity();
    else if (id == 1) valor = Sensor_dht2.readHumidity();
    else valor = 127;
  }
  else valor = 127;

  if (isnan(valor)) valor = 127;

  Desactivar_Actuador(4);
  return valor;
}

void Inicializar_Actuadores() {
  // el pin se inicia en 2 debido a que el pin 0 y 1 son Rx/Tx
  for (byte i = 0 ; i < 9; i ++)
    Lista_Actuadores[i].inizializar((i + 2), i);
}

void Inicializar_Sensores() {
  // Sensores humeda Suelo
  Sensores_HS[0].Inizializar(4, A6, 1023, 0);
  Sensores_HS[1].Inizializar(5, A7, 1023, 0);
  // Sensores DHT22
  Sensor_dht1.begin();
  Sensor_dht2.begin();
}

void Respuesta_Actuador(byte id) {
  byte buf [4];
  buf[0] = 1;
  buf[1] = id;
  buf[2] = Estado_Actuador(id);
  buf[3] = 127;
  Serial.write(buf, sizeof(buf));
}

void Activar_Actuador(byte id) {
  if (id < Cantidad_actuadores) {
    Lista_Actuadores[id].Activar();
  }
}

void Desactivar_Actuador(byte id) {
  if (id < Cantidad_actuadores) {
    Lista_Actuadores[id].Desactivar();
  }
}

bool Estado_Actuador(byte id) {
  if (id < Cantidad_actuadores) {
    return Lista_Actuadores[id].Estado();
  }
  else return false;
}

void Enviar_Trama(byte tipo, byte id , byte valor) {
  buf[0] = tipo;
  buf[1] = id;
  buf[2] = valor;
  buf[3] = 127;
  Serial.write(buf, sizeof(buf));
}

void Leer_trama() {
  accion_Entrada = buf[0];
  tipo_Entrada = buf[1];
  id_Entrada = buf[2];
  stringComplete = false;
}

void serialEvent() {
  if (Serial.available()) {
    Serial.readBytes(buf, 4);
    if (buf[3] == 127) {
      Serial.flush();
      stringComplete = true;
    }
  }
}

// Operacion 0 Desactivar 1 Activar 2 Leer
// Tipo      0 Sensor     1 Actuador
// Id        [0-6] Actuadores [0-3] sensores
