module tb;
	initial begin
		int cnt = 0;
		do begin
			$display("cnt = %0d", cnt);
			cnt++;
		end while (cnt < 5);
	end
endmodule
