

module digital_clock (
    input clk,            // 1Hz clock input
    input reset,          // Active-high reset
    output reg [4:0] hours,   // 0 to 23 (5 bits)
    output reg [5:0] minutes, // 0 to 59 (6 bits)
    output reg [5:0] seconds  // 0 to 59 (6 bits)
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            seconds <= 0;
            minutes <= 0;
            hours   <= 0;
        end else begin
            if (seconds == 59) begin
                seconds <= 0;
                if (minutes == 59) begin
                    minutes <= 0;
                    if (hours == 23) begin
                        hours <= 0;
                    end else begin
                        hours <= hours + 1;
                    end
                end else begin
                    minutes <= minutes + 1;
                end
            end else begin
                seconds <= seconds + 1;
            end
        end
    end

endmodule

   
