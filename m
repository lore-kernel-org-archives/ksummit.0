Return-Path: <dianders@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B9E01FA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:38:29 +0000 (UTC)
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 383A689E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:38:29 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id l7so21514990ioj.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:38:29 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com.
	[209.85.166.53]) by smtp.gmail.com with ESMTPSA id
	j25sm3052383ioj.67.2019.08.23.09.38.26
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 Aug 2019 09:38:26 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id 18so21419881ioe.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 09:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<CAD=FV=VcvTTO9k4idg9mA4HxKy-3zm47vvqHvS86yJW8G8cRRg@mail.gmail.com>
	<alpine.DEB.2.21.1908231751490.1896@nanos.tec.linutronix.de>
	<alpine.DEB.2.21.1908231758320.1896@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1908231758320.1896@nanos.tec.linutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 23 Aug 2019 09:38:11 -0700
Message-ID: <CAD=FV=WwghONxW_OzMoJ1-n7Fd4uyt=VPngOqv0NjNMkgd6Rhg@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

On Fri, Aug 23, 2019 at 8:59 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Fri, 23 Aug 2019, Thomas Gleixner wrote:
> > On Fri, 23 Aug 2019, Doug Anderson wrote:
> > > On Fri, Aug 23, 2019 at 8:31 AM Sean Paul <seanpaul@chromium.org> wrote:
> > > Personally I'd rather keep Change-Id as-is with no link because it
> > > means that those who already have a workflow can keep using it and
> > > just stop stripping Change-Id.  However, if people really want a link
> > > we can make one up.  Remember, though, that at the time of posting v1
> > > that link points to NOWHERE.  THERE IS NO SERVER.  Thus you are
> > > speculating that (presumably) that link will find the patch you posted
> > > because you know that the list will be scraped by a bot.
> > >
> > > NOTE: I suppose I could do this today:
> > >
> > > https://lore.kernel.org/lkml/?q=Change-Id%3A+I23e218cd964f16c0b2b26127d4a5ca6529867673
> > >
> > > ...and it would work.  Ironically Mark yelled about that not providing
> > > any use outside of the company's system, but I just effectively used
> > > it to find v1 and v2 of the patch and also link it to what landed in
> > > the kernel tree (where, apparently, Mark missed stripping the
> > > Change-Id).  ...and the "discussion" about the patch.
> >
> > As I said to Sean:
> >
> >    Put the change id into the discard section of your patch mail or into
> >    the cover letter. So it's in the archive and if we really can agree on
> >    having the
> >
> >         Link://lkml.kernel.org/r/$MSGID_PER_PATCH
> >
> >    in the actual commit, then Linus is happy and you have your gerrit ID
> >    via a mouse click or just via that search you have above.
>
> And that avoids also the discussion about public/private references as
> neither the cover letter nor the discard section are part of the actual
> commit message.

If it is agreed upon to:

1. Make it allowed or suggested to put a well-formed (machine
parseable) Change-Id "after the cut" on mailing list posts, which
would allow you to associate v1, v2, and v3.

2. Add "Link://lkml.kernel.org/r/$MSGID_PER_PATCH" to landed patches,
which would allow you to recover the Change-Id even after a patch
lands.

...then I will be happy (ish).  The biggest downside I see here is
that it is much less likely that random committers out there will get
this right.  The way committers naturally have the same Change-Id from
v1 to v2 to v3 is because it's part of the commit message and when you
amend to a previous change it stays there.  That means that these
people will need to remember to move the Change-Id to "after the cut"
unless we teach git-send-email to do this for you (though I guess
maybe we could do that?).


-Doug
