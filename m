Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04E9BD38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:50:22 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33F4E89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 16:50:21 +0000 (UTC)
Date: Fri, 23 Aug 2019 18:50:18 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Doug Anderson <dianders@chromium.org>
Message-ID: <20190823165018.GB19727@lunn.ch>
References: <20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<CAD=FV=VcvTTO9k4idg9mA4HxKy-3zm47vvqHvS86yJW8G8cRRg@mail.gmail.com>
	<alpine.DEB.2.21.1908231751490.1896@nanos.tec.linutronix.de>
	<alpine.DEB.2.21.1908231758320.1896@nanos.tec.linutronix.de>
	<CAD=FV=WwghONxW_OzMoJ1-n7Fd4uyt=VPngOqv0NjNMkgd6Rhg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAD=FV=WwghONxW_OzMoJ1-n7Fd4uyt=VPngOqv0NjNMkgd6Rhg@mail.gmail.com>
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

> 1. Make it allowed or suggested to put a well-formed (machine
> parseable) Change-Id "after the cut" on mailing list posts, which
> would allow you to associate v1, v2, and v3.
> 
> 2. Add "Link://lkml.kernel.org/r/$MSGID_PER_PATCH" to landed patches,
> which would allow you to recover the Change-Id even after a patch
> lands.
> 
> ...then I will be happy (ish).  The biggest downside I see here is
> that it is much less likely that random committers out there will get
> this right.  The way committers naturally have the same Change-Id from
> v1 to v2 to v3 is because it's part of the commit message and when you
> amend to a previous change it stays there.  That means that these
> people will need to remember to move the Change-Id to "after the cut"
> unless we teach git-send-email to do this for you (though I guess
> maybe we could do that?).

To make this reliable, we really need git to be doing the work. We
should also think about the typical developer workflow.

To create a v1 of a patch, i do a git commit. To make a v2, i'm likely
to be using git rebase -i; git commit --am.

So why not have the initial git commit allocate the UUID. git commit
--am leaves the UUID alone. git-format-patch can then put the UUID
after the ---. Can git-send-email generate the MSGID from the UUID?

      Andrew
