Return-Path: <SRS0=tIsh=HX=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84FD888D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 17:41:08 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1A40142D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 May 2018 17:41:08 +0000 (UTC)
Date: Fri, 4 May 2018 10:40:55 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Jani Nikula <jani.nikula@intel.com>,
	David Howells <dhowells@redhat.com>,
	Sasha Levin <Alexander.Levin@microsoft.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Message-ID: <20180504174055.GF4649@kroah.com>
References: <20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
	<20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<8669.1525427874@warthog.procyon.org.uk> <87fu377gbu.fsf@intel.com>
	<20180504130932.GI29205@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180504130932.GI29205@thunk.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 04, 2018 at 09:09:32AM -0400, Theodore Y. Ts'o wrote:
> On Fri, May 04, 2018 at 03:31:17PM +0300, Jani Nikula wrote:
> > On Fri, 04 May 2018, David Howells <dhowells@redhat.com> wrote:
> > > Sasha Levin via Ksummit-discuss wrote:
> > >
> > >> 	Cc: stable@vger.kernel.org # commit-id-of-(2)
> >
> > This has been documented since
> > 
> > commit 8e9b9362266dd16255473c080d846b13e27247bf
> > Author: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
> > Date:   Sun Dec 6 12:24:31 2009 +0100
> > 
> >     Doc/stable rules: add new cherry-pick logic
> > 
> > in v2.6.33 so seems like there should have been enough time to fix the
> > tools.
> 
> The problem is that it's not being *used* that way.  In fact, that
> documentation is arguably out of date.  When it does get used, it's
> used to indicate which kernels the stable patch applies.  You have to
> go pretty far back before you find that suggested usage.  Run:
> 
> git log --grep stable@kernel.org | grep -i cc: | grep stable | grep \#
> 
> and see for yourself.  The first couple of hits:
> 
>     Cc: stable@kernel.org # 3.11
>     Cc: stable@kernel.org # 4.8+
>     Cc: stable@kernel.org # 4.8+
>     Cc: stable@kernel.org # 4.13+
>     Cc: stable@kernel.org # 4.8+
>     Cc: stable@kernel.org   # 4.13 - together with 890da9cf0983
>     Cc: stable@kernel.org # 4.13
>     Cc: stable@kernel.org # 4.13
>     Cc: stable@kernel.org   # v4.8+
>     Cc: stable@kernel.org # v4.10+
>     Cc: stable@kernel.org # v4.10+
>     Cc: stable@kernel.org # v4.10+
>     Cc: stable@kernel.org  # reverted commits were marked for stable
>     Cc: stable@kernel.org   # for the backport of the original commit
>     Cc: stable@kernel.org # v4.8+
> 
> At this point, my suggestion would be to delete the text added by the
> above-mentioned commit, and add a new syntax.  We're much more willing
> to support multiple headers, so something like this:
> 
> Stable-prereq: DEADBEEF1234: subsystem: bork bork bork....
> 
> With multiple Stable-preeq: lines allowed, where the order is
> significant, might be one way to do things.

Ugh, what?  I don't understand what you are proposing here, what we have
today is just fine, what is broken with it?

thanks,

greg k-h
