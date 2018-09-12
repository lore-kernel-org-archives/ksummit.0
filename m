Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A58E2F7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 13:31:02 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 44CF863D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 13:31:02 +0000 (UTC)
Date: Wed, 12 Sep 2018 15:30:56 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
In-Reply-To: <20180912131001.GG2760@piout.net>
Message-ID: <alpine.DEB.2.21.1809121523580.9957@nanos.tec.linutronix.de>
References: <20180910174638.26fff182@vmware.local.home>
	<3146009.WtUYtaxuno@avalon>
	<alpine.DEB.2.21.1809121411180.9957@nanos.tec.linutronix.de>
	<3070742.JVHc92YBtH@avalon> <20180912131001.GG2760@piout.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 12 Sep 2018, Alexandre Belloni wrote:
> On 12/09/2018 15:53:59+0300, Laurent Pinchart wrote:
> >
> > Do you get bothered that they carry a tag when they are posted the first time, 
> > or only that they do so *and* have clear problems ?

The tag does not bother me too much when the patch is correct, albeit I
prefer public review on the mailing list.

Though if you get a trivial comment typo fix with 5 reviewed tags already
applied then I really have to ask whether people have actually understood
what review means. These things emerge from 'have to follow rules no matter
what' processes in companies or they simply are caused by statistics
dressing. Both reasons are not helping the cause.

> I guess the issue is that it is very difficult to trust reviewed-by or
> acked-by tags that are coming from coworkers/affiliates, especially more
> when the review didn't happen publicly. From my point of view, that
> review may or may not have happened.

When the patch is obviously buggy, it's irrelevant if it happened or
not. It's worthless in both cases.

Thanks,

	tglx
