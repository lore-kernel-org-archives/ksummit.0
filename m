Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21A43413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 23:20:04 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9077EB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 23:20:03 +0000 (UTC)
Message-ID: <1470784802.2299.85.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Joerg Roedel <joro@8bytes.org>, Thorsten Leemhuis
	<regressions@leemhuis.info>
Date: Tue, 09 Aug 2016 16:20:02 -0700
In-Reply-To: <20160809223118.GG1437@8bytes.org>
References: <s5h60rs31z3.wl-tiwai@suse.de> <1560409.5vnWShrmDy@vostro.rjw.lan>
	<4b6ef14c-cea6-b51d-62db-ba3e708916ea@leemhuis.info>
	<20160809094046.GA1437@8bytes.org>
	<a9abc71f-7070-3f60-3f4c-16ac7a082fc9@leemhuis.info>
	<20160809223118.GG1437@8bytes.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-08-10 at 00:31 +0200, Joerg Roedel wrote:
> On Tue, Aug 09, 2016 at 09:02:22PM +0200, Thorsten Leemhuis wrote:
> > Yeah, definitely. One afaics important part that needs to be done 
> > in this area: make bugzilla.kernel.org work better. At least some 
> > (or maybe even quite a lot?) of the bugs reported there afaics seem 
> > to not get proper attention from the right people. Due to that I'd 
> > assume some testers will have come to conclusions like "testing for 
> > regressions and bugs is not worth the trouble, as the kernel 
> > developers are not interested in the bugs I file anyway".
> 
> In my case, I am only looking into the kernel.org bugzilla if someone
> pings me about it. Usually I get the upstream bug reports via email.


You can have bugzilla.kernel.org configured to send your list email
when someone reports a new bug.

It used to actually be useful: you could reply and it would capture
that in the bugzilla entry.  However, since the migration to bugzilla
version 3, this has started to fail, so you need to add the reporter's
cc directly as well now.

Once you get this configuration set up it means that bugzilla and email
can be directly equivalent, it's just that only email will have the
complete bug text (because bugzilla is lossy on the replies).

James
