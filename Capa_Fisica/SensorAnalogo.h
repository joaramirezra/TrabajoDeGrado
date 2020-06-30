class Sensor_Analogo {
  public :
    byte pin_Power;
    byte pin_Data;
    byte valor_medido;
    byte estado;
    int limite_superior;
    int limite_inferior;

    Humedad_suelo() {
      this->pin_Power = 0;
      this->pin_Data  = 0;
      this->estado = false;
      Desactivar();
    }

    Inizializar(byte pin_Power, byte pin_Data , int sup, int inf) {
      this->pin_Power = pin_Power;
      this->pin_Data = pin_Data;
      this->limite_superior = sup;
      this->limite_inferior = inf;
      Desactivar();
    }


    byte Sensar() {
      // se debe colocar un valor de calibracion
      digitalWrite(pin_Power, HIGH);
      delay(1000);
      long sensado = 0;
      for (int i = 0; i <= 100; i++)
        sensado = sensado + analogRead(pin_Data);
      byte valor = map(sensado/100, limite_superior, limite_inferior, 0, 100);
      digitalWrite(pin_Power, LOW);
      delay(1000);
      return valor;
    }

    void Activar() {
      digitalWrite(pin_Power, HIGH);
      estado = true;
    }

    void Desactivar() {
      digitalWrite(pin_Power, LOW);
      estado = false;
    }
    void inizializar() {
      pinMode(pin_Power, OUTPUT);
      pinMode(pin_Data, INPUT);
      Desactivar();
    }
};
