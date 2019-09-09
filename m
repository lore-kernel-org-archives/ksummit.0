Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 50076DC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 08:14:25 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 24A2BEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 08:14:23 +0000 (UTC)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Mark Brown <broonie@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20190827105153.GB23391@sirena.co.uk>
References: <alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
	<CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
	<CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
	<20190824230447.GA5163@mit.edu> <20190825031143.GA2590@kroah.com>
	<20190827105153.GB23391@sirena.co.uk>
Date: Mon, 09 Sep 2019 18:14:19 +1000
Message-ID: <871rwpdgys.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

Mark Brown <broonie@kernel.org> writes:
> On Sun, Aug 25, 2019 at 05:11:43AM +0200, Greg Kroah-Hartman wrote:
>
>> When accepting patches from people, my old scripts used to do this
>> properly and reply to the sent message-id.  Now that I use git, that's
>> lost, except that I now am generating Link: tags in the commit message
>> itself, like:
>> 	Link: https://lore.kernel.org/r/20190822213659.5501-1-hsiangkao@aol.com
>
>> Hm, I guess I do now keep that info, and I can fix my scripts to
>> properly thread things, let me go work on that later today...
>
> What I'm doing for this is that when I apply the patch I save a
> git note with the message ID and various other things then when I
> push the patch out and generate the "applied, thanks" e-mail I
> look for the git note and use that.

I was doing something similar with git notes, but the beauty of a
Link: that includes the message id is it gives you everything you need
to send those "applied" mails without any extra state.

I also have a local message-id <=> patchwork id mapping, and that means
I can also do the patchwork state update based purely off the Link: tag.

There is an open patchwork issue to allow lookup by message id, which
would make that local mapping unnecessary too:

  https://github.com/getpatchwork/patchwork/issues/106

If only the patchwork maintainers weren't all volunteers they could get
that implemented some time ;)

cheers
