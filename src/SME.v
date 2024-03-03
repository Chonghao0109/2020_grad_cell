module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
  input clk;
  input reset;
  input [7:0] chardata;
  input isstring;
  input ispattern;
  output match;
  output [4:0] match_index;
  output valid;
  reg match;
  reg [4:0] match_index;
  reg valid;






	//===============test=================
	//task DISPLAY_READ;
  //	input [7:0] string_data [31:0];
  //	input [4:0] string_length;
  //	input [7:0] pattern_data [7:0];
  //	input [3:0] pattern_length;
	//	integer i;
	//	begin
  //  	for(i=0;i<string_length;i=i+1)begin
  //  	  $write("%c",string_data[i]);
  //  	end 
  //  	$display("");
  //  	for(i=0;i<pattern_length;i=i+1)begin
  //  	  $write("%c",pattern_data[i]);
  //  	end
  //  	$display("");
	//	end
	//endtask
	//===============test=================









  reg [7:0] string_data [31:0];
  reg [5:0] string_length;
  reg [7:0] pattern_data [7:0];
  reg [4:0] pattern_length;
	

  reg [1:0] state;
  reg [5:0] string_counter,pattern_counter;
	
	reg back_chance;
	reg direction;// 0:foward 1:back

  parameter DATA_READ 	= 0;
  parameter FIND_HEAD		= 1;
  parameter CHECK_DATA  = 2;
  parameter DATA_OUT    = 3;

  always@(*) valid <= (state == DATA_OUT); 

  integer i;
  always @(posedge clk or posedge reset) begin
    if(reset)begin
      state <=  DATA_READ;
      string_length <= 0;
      pattern_length <= 0;
      match_index <= 0;
						match <= 0;
			back_chance <= 0;
    end
    else begin
      case(state) 
        
        
        
        
        DATA_READ:begin
          if(isstring)begin
            string_length <= string_length + 1;
            string_data[string_length] <= chardata;
						pattern_length <= 0;
          end
          else if(ispattern)begin
            pattern_length <= pattern_length + 1;
            pattern_data[pattern_length] <= chardata;
          end 
          else begin
            state <= FIND_HEAD; 

						//test
						//DISPLAY_READ(string_data,string_length,pattern_data,pattern_length);
          end
        
        
        end
        
     









        FIND_HEAD:begin
					if( (match_index+pattern_length-1) > string_length )begin
						state <= DATA_OUT;
						match <= 0;
					end 
					else if( (string_data[match_index] == pattern_data[0])
							||(string_data[match_index] == " " && pattern_data[0]=="^")
								||(pattern_data[0] == ".")
						)begin
						state <= CHECK_DATA;
						string_counter <= match_index+1;
						pattern_counter <= 1;
						match <= 1 ;
						if(pattern_data[0]=="^") match_index <= match_index + 1;
						//$display("%d match",match_index);
					end
					else if((pattern_data[0]=="^" && match_index == 0))begin
						state <= CHECK_DATA;
						string_counter <= 0;
						pattern_counter <= 1;
						match <= 1 ;
						//$display("%d match",match_index);
					end
					else if( pattern_data[0]=="*" )begin
						state <= CHECK_DATA;
						string_counter <= 1;
						pattern_counter <= 0;
						match <= 1 ;
						//$display("%d match",match_index);
					end
					else begin
						match_index <= match_index + 1;
						back_chance <= 0;
						match <= 0;
						//$display("%d unmatch",match_index);
					end

					direction <= 0;//forward

				end
        
        
					













        CHECK_DATA:begin

					//$display("%d %d countinue",string_counter,pattern_counter);

					if(direction==0)begin	// Forward
						if(pattern_counter >= pattern_length )begin // Match
							state <= DATA_OUT; 
							match <= 1;
						end
						else if(string_counter >= string_length)begin // unMatch
							if(pattern_data[pattern_counter] == "$")begin
								state <= DATA_OUT;
								match <= 1;
							end
							else begin
								state <= FIND_HEAD;
								match_index <= match_index + 1;
							end
						end
						else begin
							
							if(pattern_data[pattern_counter] == "*")begin
								if( pattern_data[pattern_counter+1] == string_data[string_counter])begin
									pattern_counter <= pattern_counter + 1;
								end
								else begin
									string_counter <= string_counter + 1;
								end
								back_chance <= 1;
							end
							else if( string_data[string_counter] == pattern_data[pattern_counter]
								 			||	(	 string_data[string_counter] == " " && pattern_data[pattern_counter] == "$")
												|| pattern_data[pattern_counter] == "."
								)begin
								string_counter <= string_counter + 1;
								pattern_counter <= pattern_counter + 1;

							end
							else begin
								if(back_chance)begin
									direction <= 1;
									back_chance <= 0;
								end
								else begin 
									state <= FIND_HEAD;
									match_index <= match_index + 1;
									//$display("%d %d Break",string_counter,pattern_counter);
								end
							end



						end




					end
					else begin // Back



						if(pattern_data[pattern_counter] == "*" || pattern_counter==0)begin
							string_counter <= string_counter + 2;
							direction <= 0;
						end
						else begin
							pattern_counter <= pattern_counter - 1;
							string_counter <= string_counter - 1;
						end
					end


        end
        











        
        DATA_OUT:begin
					
					match <= 0;
			
					//if(pattern_data[0]=="^")$finish();
					back_chance <= 0;
					match_index <= 0;
          if(isstring)begin
            string_length <= 1;
            string_data[0] <= chardata;
						pattern_length <= 0;
          end
          else if(ispattern)begin
            pattern_length <= 1;
            pattern_data[0] <= chardata;
          end 
          state <= DATA_READ;
        end
        
        
        
        default begin
          state <= DATA_READ;
        end
      endcase
    end
  end
  




endmodule
