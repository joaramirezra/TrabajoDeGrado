class actuador {
  public :
    byte pin;
    byte id;
    bool estado;

    actuador() {
      this->pin = 0;
      this->id  = 0;
      this->estado = false;
      Desactivar();
    }

    inizializar(byte pin, byte id) {
      this->pin = pin;
      this->id  = id;
      this->estado = false;
      pinMode(pin, OUTPUT);
      Desactivar();
    }

    bool Estado() {
      return estado;
    }

    void Activar() {
      digitalWrite(pin, HIGH);
      estado = true;
    }

    void Desactivar() {
      digitalWrite(pin, LOW);
      estado = false;
    }
};
