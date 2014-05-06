Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 12E56A83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:33:43 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 968A6201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 20:33:42 +0000 (UTC)
Date: Tue, 6 May 2014 13:33:37 -0700
From: josh@joshtriplett.org
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20140506203337.GE21332@cloud>
References: <5367D989.1000504@linaro.org> <20140506125741.GB17586@thunk.org>
	<536921B5.8090100@linaro.org> <5252732.F3YIzHDqI3@wuerfel>
	<20140506201959.GD5012@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140506201959.GD5012@thunk.org>
Cc: John Stultz <john.stultz@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Dealing with 2038
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 04:19:59PM -0400, Theodore Ts'o wrote:
> On Tue, May 06, 2014 at 08:20:47PM +0200, Arnd Bergmann wrote:
> > Medical equipment (and I assume military, which is often in the same
> > category) is probably a big thing. I remember we had a big discussion
> > about a product at a former employer when a customer asked for support
> > beyond 2038. I think we ended up saying that the hardware is fine but
> > no supported distro would handle this.
> 
> The question for the kernel summit is what sort of solutions can we
> suggest where we as kernel developers could help provide a solution
> for this problem?
> 
> If the answer is "the kernel is fine (or could be trivially made
> fine)" but the problems are all at the glibc and/or distro level, then
> it's a problem, but I'm not sure we'd be able to make progress on
> solving it in this venue.

I don't think it's entirely trivial to make the kernel fine.  Two topics
that *do* make sense for Kernel Summit:

- How do we fix existing ABIs while making it minimally painful to
  transition existing userspace to the new ABI?  Should we just
  introduce a replacement for every system call that includes a time_t
  and deprecate the old ones, or should we introduce some more
  systematic migration mechanism?

- Can the kernel do anything to make the transition easier for libc or
  other userspace programs?

One possible approach to that second point that might be worth exploring
independently, though I'd expect it to prove controversial:

- Could we move some of the userspace compatibility code out of the
  kernel and into low-level userspace shipped with the kernel?


- Josh Triplett
