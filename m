Return-Path: <gregkh@linuxfoundation.org>
Date: Fri, 7 Sep 2018 22:23:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180907202328.GE25756@kroah.com>
References: <CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
	<20180907160945.GI16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907160945.GI16300@sasha-vm>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 04:09:46PM +0000, Sasha Levin via Ksummit-discuss wrote:
> On Fri, Sep 07, 2018 at 08:54:54AM -0700, Laura Abbott wrote:
> >I don't disagree that those patches look like they should go in stable.
> >My issue is that a stable release went out with those patches in them
> >when they were buggy. We're very good at finding patches for stable
> >which fix bugs. We're less good at finding buggy patches themselves
> >in stable. Can we make more of a distinction between patches that
> >are proposed for stable (all of those patches) and patches that
> >have had enough testing to be included in stable (probably not those
> >patches)? I'd like to answer the question of what more could be done
> >(testing?) to identify those patches which are tagged as fixing
> >bugs but are also still buggy.

I am "supposed" to be waiting a full -rc cycle from when a patch hits
Linus's tree and when I push it out in a stable release.  Most of the
time that happens, but every once in a while I am ahead of the game and
get it out the same week.

So far, no one has noticed, or if they have, they have not told me :)

Unfortunately (or fortunately depending on your viewpoint), due to the
security mess lately, I've been backlogged and have been keeping pretty
true to the "wait for an -rc" rule.

Note, that this doesn't come into play for things that I "think" are
security issues, or patches that are just so "obviously correct" that I
pick up being merged in -rc1 before -rc1 is out to try to stay ahead of
the mess that happens after -rc1 is released (too many patches,
different email thread, etc.)

So it's a mixed bag, I have been trying to wait, yet people somehow feel
I'm not waiting long enough?  How long is enough?  Given that the number
of regressions we have is _very_ low overall, and 0 is impossible to
ever hit, I don't know what else to do at this point in time.

> What are your thoughts about a stable-next branch of sorts where we can
> push stable tagged fixes as soon as they hit either Linus's tree or
> maybe the pending-fixes branch in linux-next?
> 
> This way we'll have a longer term stable tree to test, and Greg can just
> cut releases from there.

No one will pay attention to "stable-next", why would putting something
there be any different from what I do now?  We run all of the normal
bots on the stable-rc releases, putting it out for a week longer would
not cause anything else to happen.

Except for a delay to have any patch in Linus's tree show up to be a
problem, and then a fix show up there.  But then I would have to notice
that this patch that showed up now, really fixes something that I need
to apply now, and not wait for a -rc release before applying.  But wait,
that fix was buggy and it should have soaked for longer...

See, I just can't win :)

So I'll stick to the "wait for a -rc" for now, as it seems like the best
middle ground we have come up with here so far.

And I don't want to maintain yet-another-tree...

thanks,

greg k-h
