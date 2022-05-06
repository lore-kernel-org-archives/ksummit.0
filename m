From: Julia Lawall <julia.lawall@inria.fr>
Date: Fri, 6 May 2022 11:53:07 +0200 (CEST)
Subject: [Ksummit-discuss] uninitialized variables bugs
In-Reply-To: <20220506091338.GE4031@kadam>
References: <20220506091338.GE4031@kadam>
Message-ID: <alpine.DEB.2.22.394.2205061150230.2845@hadrien>



On Fri, 6 May 2022, Dan Carpenter wrote:

> Ever since commit 78a5255ffb6a ("Stop the ad-hoc games with
> -Wno-maybe-initialized"), GCC's uninitialized variable warnings have
> been disabled by default.  Now, you have to turn on W=1 or W=2 to see
> the warnings which nobody except Arnd does.
>
> Disabling that has lead to a bunch of embarrassing bugs where variables
> are *never* initialized.  Very unsubtle bugs.  The bugs doesn't reach
> users because Nathan Chancellor and I review Clang and Smatch warnings
> respectively.  Also the kbuild-bot reports uninitialized variables.
>
> It's a lot to deal with.  Uninitialized variable bugs are probably the
> most common bug I have to deal with.
>
> It's frustrating.  Sometimes the false positives are hard to analyse
> because I have to read through multiple functions.  A lot of times
> when I write a patch and a commit message Nathan has already fixed it
> so it's just a waste of time.
>
> It's risky as well.  The Smatch check for uninitialized variables was
> broken for most of 2021.  Nathan sometimes goes on vacation.
>
> I guess I would hope that one day we can turn on the GCC uninitialized
> variable warnings again.  That would mean silencing false positives
> which a lot of people don't want to do...  Maybe Clang has fewer false
> positives than GCC?
>
> The Smatch check for uninitialized variable was deliberately written to
> be more strict than GCC because GCC was missing bugs.  So I think
> leaving Smatch false positives is fine.  There is a trade off between
> fewer false positives and missing bugs and Smatch is meant to err on the
> side of finding bugs but with the cost of false positives.
>
> Most of the Smatch uninitialized false positives are caused by loops:
>
> 	int i, ret;
>
> 	for (i = 0; i < bytes; i++) { // <-- what if bytes is zero?
> 		if (...)
> 			continue; // <-- can every iteration hit continue?
> 		ret = frob();
> 	}
>
> 	return ret;
>
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

Could smatch inform the user that some results are likely false positives,
or even order the results according to their likely true positiveness?

julia
