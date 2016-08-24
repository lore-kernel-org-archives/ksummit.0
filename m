Return-Path: <bkuhn@ebb.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E70F0932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 20:59:42 +0000 (UTC)
Received: from protestant.ebb.org (protestant.ebb.org [50.56.179.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DF1481F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 20:59:41 +0000 (UTC)
Date: Wed, 24 Aug 2016 13:50:11 -0700
From: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20160824205011.GA31615@ebb.org>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472052583.61594.577.camel@infradead.org>
	<20160824174724.GE30853@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160824174724.GE30853@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Greg,

Greg KH wrote today:
> There's a standing offer from the Linux foundation to get any code from any
> company that someone things is not open that is in the kernel.

I'm certainly glad to hear that in a few cases among the many hundreds of
active Linux GPL violations, Linux Foundation's "ask for our help to find the
compliance officer at a violator company" program has helped some.

> That offer has been taken up on a few times, and has never failed so far.

However, I know for a fact that it *has* sometimes failed.  Specifically,
I've utilized this service of Linux Foundation (which others can find at
https://compliance.linuxfoundation.org/references/open-compliance-directory
), with 0-for-2 results.

I did go through channels.  I used that online form and got no reply.  In
both cases, I ultimately approached Jim Zemlin directly to discuss the
matter.  Jim and other LF staff did make efforts, in both cases, to talk with
the companies, but no compliance results were achieved by Linux Foundation.

First, regarding VMware, Jim told me in August 2012 that Linux Foundation
(LF) was "in communication with VMware" and "they assured [us] that VMware
would work with Conservancy and comply".  I explained then to Jim that VMware
was conflating different issues: (a) their easy-to-resolve violations
regarding BusyBox and GNOME software, and (b) their more central issue of
combining their kernel with Linux source code -- an issue which Linus called
"in very poor taste", and which you yourself, Greg, told me "really bothered
you".  I also told Jim in 2012 that eventually, if VMware didn't resolve that
issue, that someone would likely sue them over the matter.

Over the next few years, both Karen Sandler and I attempted to follow up with
LF executives and employees -- up and down Linux Foundation's org chart.
They were unable (or unwilling) to offer any assistance in bringing VMware
into compliance.  Christoph got fed up and wanted to sue them.  After 4 years
of trying every other alternative, Conservancy decided to help him do so.

But, VMware is not my only example here.  I tried again, a year after I'd
first contacted LF about VMware, with another violator, in the automotive
industry, who had a zero-day GPL violation in their cars that contain Linux
-- no source nor offer -- and they remain out of compliance today.  I won't
name them because, per Conservancy's GPL enforcement principles (see
https://sfconservancy.org/copyleft-compliance/principles.html ), we're
keeping their name confidential as we continue to patiently work toward a
compliant resolution of their violation.

In that case, I waited about six months for an answer from LF on who to
contact at that automotive company.  In the end, LF just stopped responding
to Conservancy staff on the matter and we had to find our own way to get in
touch with the violator.  LF remains aware ( -- indeed -- I remind Jim, Mike
Dolan, Karen Copenhaver, and you, too, Greg, every time I see you all) that
this automotive company remains out of compliance on Linux, but LF has
rendered no assistance on getting them into compliance.

> I want the code, and I want the company that produced that code to join
> our community.  ..
> So far we are doing really well in achieving that goal.

Yes, with companies who "get it".  There are many of those, and they are
great stalwarts of our community.  No one is proposing suing them!  For those
companies: Karen or I call the person we know at the company and any GPL
violation is fixed in a matter of days (usually).  I've had *that* wonderful
experience with many major companies who employ many kernel developers.
Those are not the companies we're talking about here.

There are many companies, including some big ones, who just get away
with GPL violations year after year, have no intention of complying, and
refuse every effort by *everyone* (LF, Conservancy, etc.) to convince them to
comply.  In some cases, these bad actors even *flaunt* their violations; they
market products by saying that those products do things other products in the
sector can't -- because, of course, their products have proprietary Linux
modules that aren't available in source and certainly not upstream.

Anyway, as others have said, it's quite clear that there are strong policy
opinions on both sides of this issue.  As Luis mentioned, Conservancy is
actively enforcing for a growing coalition of Linux copyright holders.  But,
as Conservancy representatives, we want to hear from the entire community and
coordinate with that community.  KS is the best venue to communicate about
complex policy discussions with Linux developers.

--
Bradley M. Kuhn
Distinguished Technologist of Software Freedom Conservancy
========================================================================
Become a Conservancy Supporter today: https://sfconservancy.org/supporter
