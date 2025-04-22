#include <Ultrasonic.h>

Ultrasonic sensor(10, 11);

void setup() {
  Serial.begin(9600);
}

void loop() {
  float distancia = sensor.read();
  int digitalSensor_1 = (distancia > 5) ?0: 1;
  int idSensor_1 = 1;

    Serial.print(idSensor_1);
    Serial.print(":");
    Serial.println(digitalSensor_1);

  delay(1000);
}