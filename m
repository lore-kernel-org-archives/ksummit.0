Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6FBB89EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 20:50:36 +0000 (UTC)
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9C6AA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 20:50:35 +0000 (UTC)
Received: by mail-oi0-f67.google.com with SMTP id t127so11520677oie.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 Sep 2016 13:50:35 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <alpine.DEB.2.10.1609022241560.3378@hadrien>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160902104619.GD9355@localhost>
	<CA+55aFwSpNrOuOzaR5hh0A1XvuTu0=xVbE_CV1RVf9GMrTPDNQ@mail.gmail.com>
	<7359509.5sppVSLXcK@wuerfel>
	<CA+55aFzw-KkQOhVJG+c-WEFA=6o5aXy=yU9KXQ7jwy-xy--d9Q@mail.gmail.com>
	<alpine.DEB.2.10.1609022241560.3378@hadrien>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 2 Sep 2016 13:50:34 -0700
Message-ID: <CA+55aFx+bk4p80UYzXw+a7avwJ37eVz6PXMhK9PPt5hdnGxxVQ@mail.gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	"Nikula, Jani" <jani.nikula@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>,
	ppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 2, 2016 at 1:43 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> Like this?

Sure.

> Is it always correct to replace return NO_IRQ by return 0?

On platforms that define it to 0, like powerpc, yes.

On arm, c6x, mn10300, parisc and sparc it would need more work.

> Completely untested patch below.

Looks fine, but the ppc people should test it (although it really
should generate the exact same code, unless there was some odd
conversion case).

                 Linus
