Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77E741C69
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 15:18:19 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 06F35873
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 15:18:18 +0000 (UTC)
Message-ID: <1562080696.3321.21.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Thomas Gleixner <tglx@linutronix.de>
Date: Tue, 02 Jul 2019 08:18:16 -0700
In-Reply-To: <1562080257.3321.19.camel@HansenPartnership.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
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

On Tue, 2019-07-02 at 08:10 -0700, James Bottomley wrote:
> On Tue, 2019-07-02 at 16:49 +0200, Thomas Gleixner wrote:
[...]
> > People who use the link tag today have their homebrewn scripts to
> > add them automatically and it shouldn't be rocket science to add
> > that to git, patchwork whatever.
> 
> So if we find a way of automating this globally, I'm completely
> happy. However, I would also note that whatever script does this
> could likely also be run by you after the fact to generate the back
> link, so foolproof automation also lessens the need to make this a
> mandatory commit tag.

Just on this one, it looks like getting git to archive the msgid of the
patch commit would assist any script that goes off and tries to find
patch series and its precursors in the archives, so perhaps adding that
would be the actionable change in all of this?

James
