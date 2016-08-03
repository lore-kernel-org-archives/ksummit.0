Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F341C724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:12:56 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8D73CED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:12:55 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20160803132607.GA31662@kroah.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
Date: Wed, 03 Aug 2016 17:12:51 +0300
Message-ID: <874m72q6u4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 03 Aug 2016, Greg KH <greg@kroah.com> wrote:
> On Wed, Aug 03, 2016 at 04:05:35PM +0300, Jani Nikula wrote:
> Really?  After 10+ years of stable kernels people still don't understand
> this?  Are you sure?  Isn't the stable rule list explicit enough?  What
> more do I need to do to say, "stable patches fix bugs"?

I suppose the first rule on the list is most apt in this thread, "It
must be obviously correct and tested." Of course the maintainers test
the stuff on upstream, but who tests the commit on stable kernels and
when, if I add the cc: stable tag on it when I push?

The number of stable/longterm kernels has roughly doubled during those
ten years, and the oldest one is older than before.

> It really isn't hard here people, don't make it more difficult than it
> has to be.
...
> No, I don't think it is, as I think you are totally over-thinking this
> whole thing.

Fair enough. I'll rely on my judgement like I have before, and it hasn't
gone awfully wrong. Just please note that there really are maintainers
out here who haven't been doing this for 10+ years.

> What _specifically_ is wrong with the current workflow where you have
> seen problems that stable kernel users have hit?
>
> Real examples from now on please, if there are problems in the stable
> workflow that we have today, everyone needs to show it with examples,
> I'm tired of seeing mental gymnastics around stable kernels just because
> it is "fun".

The threads starting at [1] and [2]. Something was backported that
shouldn't have. To work properly, it depended on several other upstream
commits that couldn't have been backported. Everything was fine
upstream, but backporting this commit was not. Sure, we cleared it up in
the end (thanks again!), but there was no way for us to pre-emptively
prevent that patch from being tried to backport time and again, and one
backport did slip through.

Perhaps that's a rare corner case for you, but for us it was a hassle
and possibly tweaked our dial towards being more concervative about
adding cc: stable when pushing.

BR,
Jani.


[1] http://marc.info/?l=linux-kernel&m=146584513430303
[2] http://marc.info/?l=linux-stable-commits&m=146214101124509


-- 
Jani Nikula, Intel Open Source Technology Center
