Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B9AE1996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:58:54 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 383891FFF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 18:58:54 +0000 (UTC)
Date: Thu, 29 May 2014 14:58:52 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140529145852.0e62ffa6@gandalf.local.home>
In-Reply-To: <1401344001.27691.4.camel@dabdike>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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

On Thu, 29 May 2014 10:13:21 +0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:


> This is a taste question.  I really appreciate a well split patch series
> tackling a hard problem because it makes working out what changed and
> why a lot easier than in a single monolith ... and as a reviewer, that's
> gold dust.  I don't appreciate 30 patches changing the same thing in 30
> different files.


I don't care for those either, but when I do a cross-the-board change,
I sometimes am guilty of this myself. The rational reason is that I
will Cc the maintainer of the change. Usually it's a trivial change on
something tracing related, where I don't really need the Acked-by from
them (appreciated if they do), but a Cc just to let them know it was
changed.

When you deal with 30 different subsystems you don't want one patch
with 30 different Cc's. That will put you over the LKML Cc limit and
the patch never makes it to LKML. Thus, you need to break it up into 30
different patches each with one Cc to the respective maintainer.

-- Steve
