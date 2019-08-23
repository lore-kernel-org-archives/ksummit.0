Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17035DB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:17:16 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 758A17FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:17:15 +0000 (UTC)
Date: Fri, 23 Aug 2019 21:17:04 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
In-Reply-To: <20190823164602.GB112509@dtor-ws>
Message-ID: <alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
References: <CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Fri, 23 Aug 2019, Dmitry Torokhov wrote:
> On Fri, Aug 23, 2019 at 12:35:03PM -0400, Joel Fernandes wrote:
> > On Fri, Aug 23, 2019 at 12:19 PM Dmitry Torokhov
> > <dmitry.torokhov@gmail.com> wrote:
> > > On Fri, Aug 23, 2019 at 05:48:55PM +0200, Thomas Gleixner wrote:
> > > >
> > > > Yes, it's work for the submitter, but it's always work if the submitter
> > > > wants to have a proper trace.
> > >
> > > Here is where I disagree with you. As a patch submitter, I frankly could
> > > not care less about proper trace, history, etc. I might be putting cover
> > 
> > But that is exactly what the problem statement is. Doug does care
> > about tracing/history and wants that to be more robust etc.
> 
> Doug here is not a submitter ;)

Well, if he wants the changeids there then submitters need to insert them,
right? So it's work no matter what unless it can be automated with tooling.

Guess what, how I inject the Link to the coverletter of the previous
version of a patch series? Definitely not manualy. 

So yes, if you want proper traceability then all involved people have to do
something. If it can be done with tooling fully automated, fine. If not,
it's work whatever method you chose.

We cannot enforce the changeid thing in the community, but Google can
inforce it internally. So we give them a way to be traceable w/o plastering
the kernel logs with potentially useless information.

That said, I'm fine with a Link as well, as long as it is public
accessible. If not, then the coverletter/discard area is the place to use.

Thanks,

	tglx
