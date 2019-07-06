Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB3041C9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:57:18 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 939C387B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:57:18 +0000 (UTC)
Message-ID: <1562425034.3029.3.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Michael Ellerman
	<mpe@ellerman.id.au>
Date: Sat, 06 Jul 2019 07:57:14 -0700
In-Reply-To: <20190706140215.GD12409@piout.net>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
	<1562250136.3187.3.camel@HansenPartnership.com>
	<87zhlt17ue.fsf@concordia.ellerman.id.au>
	<20190706140215.GD12409@piout.net>
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

On Sat, 2019-07-06 at 16:02 +0200, Alexandre Belloni wrote:
> On 05/07/2019 13:24:57+1000, Michael Ellerman wrote:
> > James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> > > Cc: tags are another git artefact.  They're how you tell git-
> > > send-email 
> > > where to send copies of the patch for review or notice, but they
> > > don't
> > > really provide any intrinsic historical value.
> > 
> > Right, but it wasn't clear to me if anyone felt that they *do* have
> > historical value. Seems not.
> > 
> 
> Some maintainers do think it is useful:
> 
> https://lore.kernel.org/lkml/20171128161014.GG27409@jhogan-linux.mips
> tec.com/

Apart from stable, the only other cc I think is historically useful is
when I'm carrying a patch that impinges on another maintainer's tree
and they were cc'd for an ack which never arrived.  Then the cc in the
changelog tells Linus at least we tried.

James
