Recommend: How to set the editor for your git bash;
ref link: https://www.jianshu.com/p/fba13c5bbf83

@[TOC](Fast Intro video into fpga)
# 1 Wrong learn view
The best way to master fpga is to do practical project;
Study ways:First whole then local.

## 1.1 Problem-1:learn verilog with software thought.
1.Takes some months to look book with the programmer of verilog.
You should know the 90% of verilog is used in simulation testbench.
The design program of verilog is very simple key words.
2.Use verilog with C-lanuage.
you should know the verilog is hardware description lanuage,rather than execute language. You should clear know the circults or the behaviour the rtl.
you can master verilog programmer with 1 hour.

3.Pursit the achieve of function.
You should know that 20% of time spent in rtl meet,but 80% of rtl spent quality.
Eg: Traffic lights lab: from easy to hard gradually.

No confusing: combination circuit use "=";timing circuit use "<=";
When design RTL to achieve function: you should take care the hardware thinking and the software thinking;

## 1.2 the knowledge points
classical picture as attachment,You will have a better understanding on fpga with the help of png.

## 1.3 Combitional logic
the Hard is : 1. Follow the circult,code the RTL; 2.follow the RTL,draw the circult.
### 1.3.1 exercise
1. f = a+b+c;
2. f = (a+b) * (c+d);
3. if e==1,then f=a+b,else f=c+d;
4. if a>c,then f=a+b,else f=c+d;

```v
//1 MUX
always @(*) begin
    case(S)
        2'b00: C = D[0];
        2'b01: C = D[1];
        2'b10: C = D[2];
        2'b11: C = D[3];
        default: C = 1'bx;
    endcase
end
//always @(*) == assgin 
always @(*) begin
    C=A+B;
end
assign C=A+B;

```
### 1.3.2 Combitional logic timing 
once input change,output will changed in no time.
Have a better understaing with the help of png.

### 1.3.3 competion and adventure
Reason: assign L = A && (~A);
follow the logic,L will be always 0;
Howerer for the dealy,you will see below the png.
Solve:It cannot be avoided;
ways-1: D-trigger is not sensitive to it;
ways-2: dont connect to clk or reset.
ways-3: output must use reg to output.


## 1.4 D-trigger 
the knowledge points are as png.
```verilog
always @(posedge clk or negedge rstn) begin
    if(rstn==1'b0) begin
        Q <= 1'b0;
    end else begin
        Q <= D;
    end
end
```
### 1.4.1 setup time and hold time
Results: 1.result in wrong logic; 
    2.Metastable:need some time to make sure 1 or 0; -->hung on;
Reasons for it: 1.don't meet setup time and hold time;
                2.Asyno interface; 3. signal in different clk. 
        Conclusion:cross clk domain.
Solves :1. 1 bit signal: delay 1 clk;
        2. multi bit: a.use FiFo; b. use enable sigal.

Exer:1.

## 1.5 timing logic
how to behaviour model
1.basic model

2.behaviour model--Recommaned

```verilog
//cnt_10

```

## 1.6 State machine
1.State 2.Transfer 3.output;
why use 3-State to achieve the state-machine;
when to use state-machine-state;
