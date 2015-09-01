Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34490142B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 08:41:45 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8EE5A103
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 08:41:44 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jonathan Corbet <corbet@lwn.net>
In-Reply-To: <1436871795.2445.8.camel@HansenPartnership.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
	<1436871795.2445.8.camel@HansenPartnership.com>
Date: Tue, 01 Sep 2015 11:44:40 +0300
Message-ID: <874mje5y13.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 14 Jul 2015, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> On Mon, 2015-07-13 at 20:28 -0600, Jonathan Corbet wrote:
>> On Mon, 13 Jul 2015 21:02:26 -0400
>> Steven Rostedt <rostedt@goodmis.org> wrote:
>> 
>> > Yes, it's great if we can catch things in -next. But I don't believe
>> > that patches that fix bugs found in Linus's tree should sit in next
>> > before going into Linus's tree, because those patches are basically
>> > fixing stuff that was already in next and wasn't discovered until it
>> > hit Linus's tree. Which is why I say it's a waste of time to put it in
>> > next before sending straight to Linus.
>> 
>> That, of course, assumes that these fixes don't introduce *other* bugs
>> that might just be caught in -next...
>> 
>> In general, though, I think a lot of people see -next as -rc1 without the
>> quality control; it's volatile and scary.  So it's not surprising that it
>> doesn't get a lot of real-world testing.  And, as long as that's the case,
>> there's going to be a lot of bugs that are never caught in -next.
>
> Yes, I'm with this.  Instantly into Linus' tree means we get a lot of
> bug introducing fixes which we then have to sort out.  One of the
> complaints the stable tree maintainers and the distros are making is
> that it's hard to track the set of patches required for a fix that was
> first done wrongly.

Digging up an old thread, sorry...

I think one of the issues with the stable process is that when we add
stable tags (or Fixes: references) they are cast in stone in the commit
history. We can fix the code and everyone sees the current version, but
when you look at a commit intended for stable, it's not always as
trivial to figure out whether that was a good idea in hindsight.

When I sort out the drm/i915 fixes for current development kernels (or
-next) I often spend quite a bit of time doing git log/blame archeology
figuring out if it's a regression fix and what the regressing commit
was, etc. I've thought about scripting the git history to add git notes
to the commits that are referred to by later commits, as this would be
helpful in figuring out if there are *other* commits fixing issues in
the same regressing one. Alas I've never found the time.

I'm wondering if people would think it worthwhile to have a
collaborative effort of annotating commits using git notes, both
automatically and manually. The manual annotations might be things like,
"Cc: stable", "whoops, this was a bad idea for stable", or "this also
needs commit foo in stable". Of course, with more structure, but you get
the idea.

BR,
Jani.


>
> No harm comes to us from running regression fixes into -next and thus in
> the 0day tests because they eventually get into the correct kernel and
> the benefit is that bogus fixes may be picked up by the tests.  Why
> would we not incubate for a while in -next when there's no down side and
> plenty of upside?
>
> The idea that fixes have to go ASAP without our standard review (and
> -next and 0day are now part of our review) processes is completely wrong
> in my opinion.
>
> I think we can argue about the time length (or just leave it up to the
> maintainer) but saying we should bypass the standard process is wrong.
>
> James
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Jani Nikula, Intel Open Source Technology Center
