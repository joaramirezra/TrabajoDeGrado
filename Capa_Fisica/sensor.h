class sensor {
  public :
    byte pin_Power;
    byte pin_Data;
    byte id;
    byte valor_medido;
    byte estado;
    byte tipo;

    sensor() {
      this->pin_Power = 0;
      this->pin_Data  = 0;
      this->estado = false;
      Desactivar();
    }
    sensor(byte pin_Power, byte pin_Data, byte id, byte tipo) {
      this->pin_Power = pin_Power;
      this->pin_Data = pin_Data;
      this->id  = id;
      this->estado = false;
      inizializar()
    }

    byte Sensar() {
      Activar();
      delay(1000);
      byte valor = 0;
      byte valor = analogRead(pin_Data);
      Desactivar()
    }

    void Activar() {
      digitalWrite(pin_Power, HIGH);
    }

    void Desactivar() {
      digitalWrite(pin_Power, LOW);
    }
    void inizializar() {
      pinMode(pin_Power, OUTPUT);
      pinMode(pin_Data, INPUT);
      Desactivar();
    }
};
