`timescale 1ns / 1ps

module tb_UART_Transmitter;

// Parametry symulacji
parameter CLK_PERIOD = 10;  // Okres zegara w jednostkach czasu

// Sygnały modułu UART_Transmitter
reg clk;
reg rst;
reg send;
reg [7:0] data;
wire txd;

// Przełącznik dla plików wejściowych/wyjściowych
reg enable;

// Instancja modułu UART_Transmitter
UART_Transmitter dut (
    .clk(clk),
    .rst(rst),
    .send(send),
    .data(data),
    .txd(txd)
);

// Deklaracja plików do odczytu i zapisu
reg [7:0] input_data [0:15];   // Tablica przechowująca dane wejściowe
reg [7:0] output_data [0:127]; // Tablica przechowująca dane wyjściowe

integer i;
integer j;
integer fd_in;
integer fd_out;

// Inicjalizacja plików
initial begin
    // Otwórz plik wejściowy (dane wejściowe są zapisane w formacie binarnym)
    fd_in = $fopen("input_data.bin", "rb");
    if (fd_in == 0) begin
        $display("Error opening input file");
        $finish;
    end

    // Otwórz plik wyjściowy (wyniki symulacji będą zapisane w formacie binarnym)
    fd_out = $fopen("output_data.bin", "wb");
    if (fd_out == 0) begin
        $display("Error opening output file");
        $fclose(fd_in);
        $finish;
    end

    // Wczytaj dane wejściowe z pliku
    for (i = 0; i < 16; i = i + 1) begin
        input_data[i] = $fgetc(fd_in);
    end

    // Ustaw sygnały początkowe
    enable = 1'b1;
    clk = 0;
    rst = 1;
    send = 0;
    data = 8'b0;
    
    // Symulacja
    #10 rst = 0;  // Deaktywacja resetu po 10 jednostkach czasu

    // Pętla główna symulacji
    for (j = 0; j < 16*10; j = j + 1) begin
        // Symulacja zegara
        #5 clk = ~clk;

        // Jeśli włączony, przesyłaj dane do modułu UART_Transmitter
        if (enable) begin
            if (j < 160) begin  // Symuluj tylko przez 160 jednostek czasu
                send = 1;      // Wysyłaj dane przez 1 jednostkę czasu
                data = input_data[j/10];
            end else begin
                send = 0;      // Przestań wysyłać dane
            end
        end

        // Zapisz dane wyjściowe do pliku
        if (j >= 150) begin  // Zaczynamy zapisywać wyniki po 150 jednostkach czasu
            $fwrite(output_data[j-150], fd_out);
        end
    end

    // Zamknij pliki
    $fclose(fd_in);
    $fclose(fd_out);

    // Zakończ symulację
    $finish;
end
endmodule
