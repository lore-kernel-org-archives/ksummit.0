Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 83F0A92F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 01:30:15 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE3511E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 01:30:14 +0000 (UTC)
Date: Thu, 3 Aug 2017 18:30:10 -0700
From: Greg KH <greg@kroah.com>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <20170804013010.GA425@kroah.com>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 03, 2017 at 06:16:44PM -0700, Andy Lutomirski wrote:
> [Note: I'm not entirely sure I can make it to the kernel summit this
> year, due to having a tiny person and tons of travel]
> 
> This may be highly controversial, but: there seems to be a weakness in
> the kernel development model in the way that new ABI features become
> stable.  The current model is, roughly:
> 
> 1. Someone writes the code.  Maybe they cc linux-abi, maybe they don't.
> 2. People hopefully review the code.
> 3. A subsystem maintainer merges the code.  They hope the ABI is right.
> 4. Linus gets a pull request.  Linus probably doesn't review the ABI
> for sanity, style, blatant bugs, etc.  If Linus did, then he'd never
> get anything else done.
> 5. The new ABI lands in -rc1.
> 6. If someone finds a problem or objects, it had better get fixed
> before the next real release.
> 
> There's a few problems here.  One is that the people who would really
> review the ABI might not even notice until step 5 or 6 or so.  Another
> is that it takes some time for userspace to get experience with a new
> ABI.
> 
> I'm wondering if there are other models that could work.  I think it
> would be nice for us to be able to land a kernel in Linus tree and
> still wait a while before stabilizing it.  Rust, for example, has a
> strict policy for this that seems to work quite well.

What does Rust do here?

> Maybe we could pull something off where big new features hide behind a
> named feature gate for a while.  That feature gate can only be enabled
> under some circumstances that make it very hard to mistake it for true
> stability.  (For example, maybe you *can't* enable feature gates on a
> final kernel unless you manually patch something.)
> 
> Here are a few examples that come to mind for where this would have helped:
> 
>  - Whatever that new RDMA socket type was that was deemed totally
> broken but only just after it hit a real release.
>  - O_TMPFILE.  I discovered that it corrupted filesystems in -rc6 or
> -rc7.  That got fixed, the the API is still a steaming pile of crap.
>  - Some cgroup+bpf stuff that got cleaned up in a -rc7 or so a few releases ago.
> 
> I'm sure there are tons more.
> 
> Is this too crazy, or is it worth discussing?

I think it is, it keeps coming up over and over and it's not getting any
easier.  We are long past the time when we only had to duplicate what
other operating systems do, adding new features is much different.

I like the "manually patch" thing as an good idea for how to maybe do
this, but who is going to do that patching for testing?  What's the rule
for how long time has to pass before it can be enabled?

thanks,

greg k-h
