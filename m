From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Sun, 22 May 2022 11:07:52 +0200
Subject: [Ksummit-discuss] uninitialized variables bugs
In-Reply-To: <20220506091338.GE4031@kadam>
References: <20220506091338.GE4031@kadam>
Message-ID: <a673356d-4534-afd9-b85f-b8de7f58c9a8@kernel.org>

On 06/05/2022 11:13, Dan Carpenter wrote:
> There is also stuff like this which is harmless:
> 
> 	uint val;
> 
> 	ret = read(&val);
> 	*p = val;  // <-- uninitialized variable if read() fails
> 	return ret;
> 
> Btw, here is how to run Smatch on your code:
> https://staticthinking.wordpress.com/2022/04/25/how-to-run-smatch-on-your-code/

In the topic of suppressing false positives we also have several
"fixes", sometimes pointed out incorrectly by Coverity, for missing
check for of_device_get_match_data().

Compare:
https://elixir.bootlin.com/linux/v5.18-rc7/source/drivers/clk/clk-aspeed.c#L415
https://elixir.bootlin.com/linux/v5.18-rc7/source/drivers/clk/clk-oxnas.c#L216

Although in theory the of_device_get_match_data() can return NULL, in
practice it is not possible because driver matches via OF thus there
will be always of_device_id->driver data.

Coverity screams about it, people fix it by adding checks for NULL,
which is pointless. Half of drivers add the !NULL check, half do not...

Best regards,
Krzysztof
