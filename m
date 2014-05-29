Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 154FB996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:43:36 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.225])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C3C8A2019A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:43:34 +0000 (UTC)
Date: Thu, 29 May 2014 14:43:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20140529144332.570be36a@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.10.1405282325020.3952@nanos>
References: <20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528143246.GV15585@mwanda>
	<CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
	<20140528163902.GA5099@sirena.org.uk>
	<1401295862.13546.109.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528173553.GE5099@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F328205B1@ORSMSX114.amr.corp.intel.com>
	<20140528183825.GA21477@sirena.org.uk>
	<alpine.DEB.2.10.1405282325020.3952@nanos>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 28 May 2014 23:32:11 +0200 (CEST)
Thomas Gleixner <tglx@linutronix.de> wrote:
\
> What you really want is:
> 
> Link: https://lkml.kernel.org/r/MESSAGE_ID_OF_PATCH
> 
> It's way more useful than any of the v1-n writeups, which are most of
> the time just a completely waste of electrons. Even if written well,
> without the actual review context they are pretty pointless.

Agreed!

And unfortunately, even that doesn't work because version patches
usually start a new thread, and you lose out on what discussions were
made before it.

Lately, I've been adding more than one Link: tag. It may be overkill,
but when I post a v2 patch series, I try to have changes to the
patches have a Link tag that point to the discussion that caused the
changes.

If I have v5 (which I haven't had more than a v2 lately), I would
recommend having 4 Link tags that point to the posting of all previous
versions of the patch in order to be able to read the entire discussion
in the future.

-- Steve
