Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 24E9070A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:52:23 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BE4E6200A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 20:52:22 +0000 (UTC)
Date: Fri, 9 May 2014 16:52:13 -0400
From: Dave Jones <davej@redhat.com>
To: Roland Dreier <roland@kernel.org>
Message-ID: <20140509205213.GA21354@redhat.com>
References: <20140509170709.GA9747@redhat.com>
	<CAG4TOxONfcd=c+78yxUVj4iOQ_n7+RShPeir9HWUQ_zGDWYJig@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG4TOxONfcd=c+78yxUVj4iOQ_n7+RShPeir9HWUQ_zGDWYJig@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 01:33:46PM -0700, Roland Dreier wrote:
 > On Fri, May 9, 2014 at 10:07 AM, Dave Jones <davej@redhat.com> wrote:
 > > Last year I had been doing the coverity scans on an almost daily basis
 > > for 2-3 months.  Now that we're a year in, I'd like to share some
 > > results, and show some of the more common trends and bug patterns that
 > > seem to pop up.
 > 
 > This probably doesn't add too much to the discussion, but as a
 > subsystem maintainer, I like having easy-to-run analysis tools (or
 > easily available scan results like coverity).  It seems to lead to
 > interesting patches from people who aren't really interested in the
 > subsystem but just trawl through scan results.
 > 
 > It's pretty cool getting fixes for subtle (but in retrospect obvious)
 > bugs from people who say "compile tested only because I have no
 > hardware."

I've been apprehensive about approving some of the people signing up
for coverity. There's been a large influx of people over the last few
months whose only prior kernel commits have been things like checkpatch
fixes. On one hand, it's great to see people wanting to progress beyond
that, but I know some maintainers have had a less than positive reaction
with getting crap patches based on coverity results. It's a tricky
balance, but I think for the most part my judgment is erring on the
right side of the approve/deny fence.

The one thing I can't wait for Coverity to implement is the ability
to say "bugs for this subsystem go to this mailing list".  At that point
the mails it sends out should be a lot more useful, and maintainers
themselves will be able to take action. (I know some people hate the
web UI, so this will hopefully appease them).

Most people have got a lot better at jumping on things as they get
introduced, which is great.  The stuff that sucks is the old reports
that have been in their database forever.  I've (along with several
other people) been periodically going through these trying to weed
out the real bugs from the false positive/intentionals.

I'll need to come up with some way to periodically send a bunch of
those to lists too.

	Dave
