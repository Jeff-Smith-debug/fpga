//If you have the timing tu,you will fast use hdl to achieve it;
1.
```v
module demo1(
    input clk,
    input rstn
);

wire[4:0] cnt;
//cnt10 logic
always @(posedge clk or negedge rstn) begin
    if(!rst) begin
        cnt <= 1'b0;
    end else begin
        if(dout==1'b0) begin
            cnt <= 5'd0;
        end else begin
            if(cnt==5'd9) begin
                cnt <= 5'd0;
            end else begin
                cnt <= cnt + 1'b1;
            end
        end
    end
end
//dout logic
always @(posedge clk or negedge rstn) begin
    if(!rstn) begin
        dout <= 1'b0;
    end else begin
        if(en==1'b1) begin
            dout <= 1'b1;
        end else begin
            if(cnt!=5'd9 && cnt!=5'd0) begin
                dout <= 1'b1;
            end else begin
                dout <= 1'b0;
            end
        end
    end
end

endmodule

always  @(posedge clk or negedge rst_n)begin
    if(rst_n==1'b0)begin
    end
    else if()begin
    end
    else if()begin
    end
end

```
