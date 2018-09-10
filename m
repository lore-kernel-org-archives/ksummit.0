Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 130A211E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:01:10 +0000 (UTC)
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8AC947A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:01:09 +0000 (UTC)
Received: by mail-oi0-f67.google.com with SMTP id r69-v6so43573307oie.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:01:09 -0700 (PDT)
Date: Mon, 10 Sep 2018 16:01:06 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20180910230104.GA1764@localhost.localdomain>
References: <CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180910164519.6cbcc116@vmware.local.home>
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

On Mon, Sep 10, 2018 at 04:45:19PM -0400, Steven Rostedt wrote:
> On Mon, 10 Sep 2018 19:43:11 +0000
> Sasha Levin <Alexander.Levin@microsoft.com> wrote:
> 
> > On Fri, Sep 07, 2018 at 08:52:40AM -0700, Linus Torvalds wrote:
> > >So this is what my argument really boils down to: the more critical a
> > >patch is, the more likely it is to be pushed more aggressively, which
> > >in turn makes it statistically much more likely to show up not only
> > >during the latter part of the development cycle, but it will directly
> > >mean that it looks "less tested".
> > >
> > >And AT THE SAME TIME, the more critical a patch is, the more likely it
> > >is to also show up as a problem spot for distros. Because, by
> > >definition, it touched something critical and likely subtle.
> > >
> > >End result: BY DEFINITION you'll see a correlation between "less
> > >testing" and "more problems".
> > >
> > >But THAT is correlation. That's not the fundamental causation.
> > >
> > >Now, I agree that it's correlation that makes sense to treat as
> > >causation. It just is very tempting to say: "less testing obviously
> > >means more problems". And I do think that it's very possibly a real
> > >causal property as well, but my argument has been that it's not at all
> > >obviously so, exactly because I would expect that correlation to exist
> > >even if there was absolutely ZERO causality.
> > >
> > >See what my argument is? You're arguing from correlation. And I think
> > >there is a much more direct causal argument that explains a lot of the
> > >correlation.  
> > 
> > Both of us agree that patches in later -rc cycles are buggier. We don't
> > agree on why, but I think that it actually doesn't matter much. For the
> > sake of the argument, let's go with what you're saying and assume that
> > they're buggier because they are are more critical, tricky and subtle.
> > 
> > So we have this time period of a few weeks where we know that we're
> > going to see tricky patches. What can we do to better deal with it?
> > Saying that we'll just see more bugs and we should just live with it
> > because it's "BY DEFINITION" is not really a good answer IMO.
> > 
> > For stable trees, we can address that by waiting even longer before
> > picking up -rc5+ stuff, but that will move us further away from your
> > tree which is an undesirable effect.
> > 
> > I don't have anything beyond guesses, but I don't think the
> > solution here is WONTFIX.
> > 
> 
> I think it may be more of CANTFIX.
> 
> The bugs introduced after -rc5 are more subtle and harder to trigger. I
> (and I presume Linus, but he can talk for himself) don't believe that
> keeping it in linux-next any longer will help find them, unless the
> bots get better to do so. The problem is that these bugs are not going
> to be triggered until they get into the mainline kernel and perhaps not
> even until they get into the distros. We want to find them before that,
> but it's not until they are used in production environments that they
> will get found.
> 

I agree that leaving in linux-next, with no improvements to bots, would
not help much. Maybe it will complicate the life of stable tree maintainers and
consumers. 

One thing that could be done to help is to ask from developers for
some sort of selftest that can be executed by the bots and used while
backporting their fixes to stable. That way the developer can have a way
to tell how to check if the kernel did not regress and whoever wants to
try out the fix can validate it. Of course, can this really fly, that is
a different story. Not sure the community will end up in a place where
all patches post -rc5 requires a selftest :-)

And of course, there is the other type of regression, which is the fix /
backport causing issue on other parts of the kernel/subsystem. Maybe
forcing each subsystem to have some sort of selftest/sanity check would
be one way to improve the reliability of the results of the bots
overall.

> 
> -- Steve
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
