//Sensor de temperatura usando o LM35
 
const int LM35 = A0; // Define o pino que lera a saída do LM35
float temperatura; // Variável que armazenará a temperatura medida
float temperaturaMAX = 80;
float temperaturaMIN = 40;
 
//Função que será executada uma vez quando ligar ou resetar o Arduino
void setup() {
Serial.begin(9600); // inicializa a comunicação serial
}
 
//Função que será executada continuamente
void loop() {
temperatura = (float(analogRead(LM35))*5/(1023))/0.01; //Cálculo da tensão e o limite de trabalho do sensor; 11bits
//Serial.print("Temperatura: ");
Serial.print(temperaturaMAX);
Serial.print(',');
Serial.print(temperaturaMIN);
Serial.print(',');
Serial.println(temperatura + 40);
delay(2000);
}

