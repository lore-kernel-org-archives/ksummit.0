Return-Path: <joelaf@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77458F6A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:31:57 +0000 (UTC)
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0FB2A89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 19:31:57 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id j15so12232407qtl.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 12:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<CAD=FV=Wsk__UTAazrypFRFpc-ou6a04sasf+70qF0ft02m++-w@mail.gmail.com>
	<CAJWu+oo++AVx-xsQkVCscWLVQyExA7QUPX8AxyQ=RWFw3FrmiQ@mail.gmail.com>
	<CAD=FV=UHnf2eCGPo9yH28tFCytWwE-WwsRVjH8oCV5Q+gg8K3g@mail.gmail.com>
	<CAJWu+or4Lur_q65yTtPQmh8wX2A7EaXaOWXmCnOq3ThRpnN=Tg@mail.gmail.com>
	<CAJWu+ooBWhwFTOaw38j1SNnY5v9nLtOZRFgfRbgDOP2Q0ocwcQ@mail.gmail.com>
	<alpine.DEB.2.21.1908232119470.1939@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1908232119470.1939@nanos.tec.linutronix.de>
From: Joel Fernandes <joelaf@google.com>
Date: Fri, 23 Aug 2019 15:31:43 -0400
Message-ID: <CAJWu+opKDgGFsobgEknriaTUTdG7oHu_2BEsAJqwZh83jkqcFg@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Cc: Barret Rhoden <brho@google.com>,
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

On Fri, Aug 23, 2019 at 3:23 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Fri, 23 Aug 2019, Joel Fernandes via Ksummit-discuss wrote:
> > On Fri, Aug 23, 2019 at 3:08 PM Joel Fernandes <joelaf@google.com> wrote:
> > > Another thing that could be done is, have the git hook insert the
> >
> > And, here I meant have git-send-email or the patch sending program
> > insert the unique ID into the discardable part.
> >
> > In my flow, I have scripts that remove metadata from my commit message
> > and insert them into the discardable part of the patch already which I
> > use for "additional notes". I am not sure what it would take to have
> > people use such scripts...
>
> Well, if some organization wants those IDs or whatever then they will come
> up with proper tooling which enforces this. We won't ever be able to
> enforce it on every submitter on the planet.

Agreed.

> For maintainers we can make the Message-ID link mandatory if the community
> agrees on it. git has some form of support for that already as I learned in
> some other thread. And adding it to homebrewn tooling is not rocket science
> either.

Yep. I am curious now what support exists in git for this. I'll try to
look for that up, thanks!

- Joel
