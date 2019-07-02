Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1FF591C26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 15:11:01 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7B4987C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 15:11:00 +0000 (UTC)
Message-ID: <1562080257.3321.19.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Thomas Gleixner <tglx@linutronix.de>
Date: Tue, 02 Jul 2019 08:10:57 -0700
In-Reply-To: <alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2019-07-02 at 16:49 +0200, Thomas Gleixner wrote:
> On Tue, 2 Jul 2019, James Bottomley wrote:
> > On Mon, 2019-07-01 at 19:54 +0200, Thomas Gleixner wrote:
> > > The link to V2 is in both cases in the cover letter. That's
> > > sufficient. Yes, it might not be necessary, but I just recently
> > > ended up wasting an hour finding an earlier version because the
> > > cover letter subject changed slightly. I surely have better
> > > things to do.
> > 
> > I'm not arguing against changelogs in the patches themselves as
> > long as they're below the commit message --- cutoff.  In fact I
> > think that's best practice for reviewers.  I'm just arguing making
> > a link tag mandatory would impose an enforcement burden on a lot of
> > subsystems which would provide no benefit to them), so I don't mind
> > it's being optional but it shouldn't be mandatory.
> 
> What's the burden exactly?

Not everyone knows what a message ID is or how to find it, so we'd have
to explain why the patch was rejected (or simply have the maintainer
add it at commit time, which currently involves some effort).  Quite a
few of the list archives mangle it so someone would have to notice this
or unmangle it.

> You mean that people would have to add them manually?

Most email tools don't show you the msgid, so if you're simply doing
driveby commits now we have to explain to you how to find it ...
remember linux-scsi isn't currently on lore so we can't just say "use
the lore archive".

There's also a knock on: for this to be useful, the commit series needs
to be threaded.  I've actually no objection to making this one
mandatory I'm just noting it's another precursor we need to think
about.

> People who use the link tag today have their homebrewn scripts to add
> them automatically and it shouldn't be rocket science to add that to
> git, patchwork whatever.

So if we find a way of automating this globally, I'm completely happy. 
However, I would also note that whatever script does this could likely
also be run by you after the fact to generate the back link, so
foolproof automation also lessens the need to make this a mandatory
commit tag.

James
