Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C8DE7988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 15:33:03 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A709F1FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 15:33:02 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: "josh@joshtriplett.org" <josh@joshtriplett.org>, Thomas Gleixner
	<tglx@linutronix.de>
Date: Thu, 29 May 2014 15:32:59 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F32821BEC@ORSMSX114.amr.corp.intel.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud>
In-Reply-To: <20140528233145.GA14933@cloud>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

> - That a 30-patch series is painful to review via email?  Agreed
>  completely; I think we need better git-based workflows that don't
>  always have to fall back to the least-common-denominator of patchbomb
>  threads.

I'm lucky that nobody sends me 30-patch series for ia64 ...  but if they
did I'd try to manage the follow-up flow by setting up a topic branch in
git and pushing to kernel.org.  Maybe parts 1-5 of the series are OK
and I'd commit them to the branch. Next review cycle would only have
to deal with the remaining 25 patches.

Perhaps the submitter would see this, and spend extra efforts to make
sure all issues in the first 4-8 patches of the remainder are fixed (while =
keeping
the rest as context for where this whole train is headed). So we'll nibble
the problem down by stages.  The submitter would also see definite
signs of progress.

In some cases we might get to part27 and realize that something was
wrong in part3 ... that's OK ... a topic branch in a maintainer sub-tree
can be rebased as long as all parties to the discussion know that it
is happening.

-Tony
