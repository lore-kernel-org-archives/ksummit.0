Return-Path: <dianders@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E3EDFCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 15:50:02 +0000 (UTC)
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D787567F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 15:50:01 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id 18so21069882ioe.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 08:50:01 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com.
	[209.85.166.42]) by smtp.gmail.com with ESMTPSA id
	s12sm2663998ios.31.2019.08.23.08.49.58
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 23 Aug 2019 08:49:58 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id e20so21053170iob.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 08:49:58 -0700 (PDT)
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
In-Reply-To: <CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 23 Aug 2019 08:49:44 -0700
Message-ID: <CAD=FV=VcvTTO9k4idg9mA4HxKy-3zm47vvqHvS86yJW8G8cRRg@mail.gmail.com>
To: Sean Paul <seanpaul@chromium.org>
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

On Fri, Aug 23, 2019 at 8:31 AM Sean Paul <seanpaul@chromium.org> wrote:
>
> On Fri, Aug 23, 2019 at 11:18 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >
> > On Fri, Aug 23, 2019 at 09:15:30AM -0400, Sean Paul wrote:
> > > Only if you've uploaded the patch somewhere before sending it to the
> > > mailing list. I think this would satisfy the Gerrit crowd, since
> > > they're presumably uploading the patch to Gerrit, getting some review
> > > on it and then sending it upstream. They will have a link. If you're
> > > just interested in being archival tool friendly, you probably just
> > > want to add some uuid cookie to the patch and post it directly to the
> > > mailing list.
> >
> > And this is why I think something like one of the two:
> >
> > Link: https://linux-review.googlesource.com/c/1158
> > Link: https://linux-review.googlesource.com/q/I3268f9036512c4378cde1da37e0612b43ed4d384
> >
> > ... is a better choice.
> >
>
> Agreed. If you have a url for the patch this makes sense.
>
> I don't upload my patches to Gerrit, but I am interested in enabling
> patchwork (or equivalent tool) to do a better job of tracking revision
> changes.

Right.  I think the point that I've been trying to make is that just
like Sean: I have no gerrit server involved when I submit patches to
the list.  I do:

1. Write patch on my local machine.
2. Post v1 to mailing list.
3. Make changes.
4. Post v2 to mailing list.
5. Make changes.
5. Post v3 to mailing list.

I have never uploaded to a gerrit in this process.  THERE IS NO GERRIT
LINK!  Yet, just like Sean Paul says, I would like patchwork (or any
other system trawling through the mailing lists) to link my v1 to my
v2 to my v3.

The key here is that Change-Id needs to be consumed by machines.  Yes,
it's nice if humans can also find it useful by itself, but primarily
we need programs (like patchwork) to be able to understand it and link
v1 to v2 to v3.  Unless the link is in a super structured Canonical
form then it is WORSE for a machine to consume than just a plain
Change-Id.

Personally I'd rather keep Change-Id as-is with no link because it
means that those who already have a workflow can keep using it and
just stop stripping Change-Id.  However, if people really want a link
we can make one up.  Remember, though, that at the time of posting v1
that link points to NOWHERE.  THERE IS NO SERVER.  Thus you are
speculating that (presumably) that link will find the patch you posted
because you know that the list will be scraped by a bot.

NOTE: I suppose I could do this today:

https://lore.kernel.org/lkml/?q=Change-Id%3A+I23e218cd964f16c0b2b26127d4a5ca6529867673

...and it would work.  Ironically Mark yelled about that not providing
any use outside of the company's system, but I just effectively used
it to find v1 and v2 of the patch and also link it to what landed in
the kernel tree (where, apparently, Mark missed stripping the
Change-Id).  ...and the "discussion" about the patch.


-Doug
