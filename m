Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81DDE1B39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 18:55:41 +0000 (UTC)
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 255A389B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 18:55:41 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id v38so135137qtb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 11:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
In-Reply-To: <20190827153344.GC534@kroah.com>
From: Konstantin Ryabitsev <mricon@kernel.org>
Date: Tue, 27 Aug 2019 14:55:28 -0400
Message-ID: <CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Tue, 27 Aug 2019 at 11:33, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> >        Link: https://lkml.kernel.org/$Message-ID
> >
> > then you have your UUID tag. The tip bot sends you a reply based on tha=
t
> > tag and I know you got some of them already.
>
> I'm using:
>             Link: https://lore.kernel.org/r/$message-id
>
> should we standardize on the lkml one instead as it's shorter?  The lore
> one handles any message id that is on any mailing list it handles, is
> the lkml one the same?

It's the exact same system and the /r/ is always required. I prefer
lore.kernel.org because it doesn't imply that the message is going to
be on the LKML (i.e. it can be on a list that isn't even hosted on
vger.kernel.org).

So, my recommendation is Link: https://lore.kernel.org/r/$message-id

Regards,
--=20
Konstantin Ryabitsev
Kernel.org Systems Administrator
Mont=C3=A9al, Qu=C3=A9bec
