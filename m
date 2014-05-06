Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6A6CE99F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 12:57:46 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A79061FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 12:57:45 +0000 (UTC)
Date: Tue, 6 May 2014 08:57:41 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20140506125741.GB17586@thunk.org>
References: <5367D989.1000504@linaro.org> <20140505205339.GB15815@cloud>
	<53684526.7060507@zytor.com> <20140506022158.GA1499@thin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140506022158.GA1499@thin>
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

On Mon, May 05, 2014 at 07:21:59PM -0700, Josh Triplett wrote:
> 
> 64-bit off_t support seems like a similar issue; all the kernel
> interfaces support 64-bit off_t, and glibc has #defines for
> 64-bit off_t, but a large number of userspace programs don't bother to
> define them.
> 
> That seems like the right path to transition time_t as well.

It's actually quite different, because there off_t isn't used in
userspace libraries or data structures nearly as much as time_t.  It's
not that terrible if you have some libraries which are compiled with
64-bit loff_t (note the different type) and some userspace programs
which aren't.  But the problems if some libraries want to use a 64-bit
time_t and some programs are still only able to support a 32-bit
time_t are much more trickly.

I suspect the only real way of dealing with the problem for 32-bit
architectures is to consider doing a major version bump for all shared
libraries, and for a while, 32-bit distributions might have to ship
two versions of all of the more popular shared libraries.

It might be easier for x86 to simply say, "suck it up", if you care,
you should use x32 ABI.  However, I believe the original concern was
that there might still be 32-bit x86 chips still out there in 2038,
and x32 won't solve that problem, unfortunately.

OTOH, if the main issue is "industrial control and security systems"
as stated in the original problem description,, I very much doubt they
would need GNOME shared libraries.  :-)

						- Ted
