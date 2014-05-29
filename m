Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 06114BEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 00:39:36 +0000 (UTC)
Received: from e33.co.us.ibm.com (e33.co.us.ibm.com [32.97.110.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8CEDF1FA0E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 00:39:35 +0000 (UTC)
Received: from /spool/local
	by e33.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Wed, 28 May 2014 18:39:34 -0600
Received: from b03cxnp07028.gho.boulder.ibm.com
	(b03cxnp07028.gho.boulder.ibm.com [9.17.130.15])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 0CBDB3E40040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:39:33 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp07028.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4T0cLQc54853672
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 02:38:21 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4T0dWvc005201 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 18:39:32 -0600
Message-ID: <1401323970.13546.188.camel@dhcp-9-2-203-236.watson.ibm.com>
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: josh@joshtriplett.org
Date: Wed, 28 May 2014 20:39:30 -0400
In-Reply-To: <20140528233145.GA14933@cloud>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Wed, 2014-05-28 at 16:31 -0700, josh@joshtriplett.org wrote:
> 
> > That's the real issue. And this needs to be fixed first.
> > 
> > I really started to put breaks into this cycle of hell, where I get
> > spammed with a 30+ patch series in the morning and after I spent some
> > quality time looking at it and replying to a particular patch, I get
> > another spam bomb within a few hours, which is not much better than
> > the previous one.
> 
> That's definitely a good workflow question.  We tell people to break
> huge patches down into pieces, and that can turn substantial changes
> into long patch series.

Sometimes it isn't possible, or desirable, to break up large patch sets,
but for the most part that isn't the case.  The next step would be to
have all of the patches within a patch set be related.

Mimi
