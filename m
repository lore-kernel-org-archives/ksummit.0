Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 814C082A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:00:28 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8133F1FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:00:27 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.mail.srv.osa [10.202.2.42])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 7E7CE2113D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 15:00:26 -0400 (EDT)
Date: Tue, 6 May 2014 12:00:24 -0700
From: Greg KH <greg@kroah.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140506190024.GA1004@kroah.com>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 10:45:05AM -0700, Andy Lutomirski wrote:
> There doesn't currently seem to be any real process for reviewing new
> core APIs for sanity of design, appropriateness to solve the problem
> they're targetting, or correctness of implementation.  Some examples
> that come to mind recently:
> 
>  - A lot of people seem to think that O_TMPFILE is a terrible
> interface, despite the fact that the functionality it provides is very
> useful.  It was also rather badly broken until -rc8 or so.
> 
>  - The x86 32-bit vdso clock functions almost made it in with a
> questionable symbol version.
> 
>  - 3.15 is currently slated to include an unfortunate ABI glitch in
> the MIPS seccomp filter interface.  There's a patch.
> 
>  - There are some aspects of the keyring API that seem to me to be quite bad.
> 
>  - An impressive number of new APIs are missing -EINVAL returns if
> reserved parameters are set.
> 
> (I'm not trying to point a finger at anyone with these examples;
> they're just things that I was involved in to some extent.)
> 
> The current process is confused.   For example, I currently plan on
> trying to remember to ask Linus to revert the MIPS seccomp stuff or
> fix it sometime around -rc6 if the patch hasn't landed, but this
> sucks.
> 
> I think that the process could be improved.  I think that there are
> people who are willing to spend time to read API docs and thinking
> about these kinds of issues.  (I am, and Michael Kerrisk seems to do a
> fair amount of it.)

We do have linux-api, which should be cc:ed for new api additions.  But
it usually isn't :(
