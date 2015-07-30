Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F081475
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 14:30:37 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C08251DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 14:30:34 +0000 (UTC)
Message-ID: <1438266633.2229.18.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Date: Thu, 30 Jul 2015 07:30:33 -0700
In-Reply-To: <3889421.xHYd3fi1mh@diego>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438243737.26511.114.camel@infradead.org>
	<1438264121.2229.11.camel@HansenPartnership.com>
	<3889421.xHYd3fi1mh@diego>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: mcgrof@gmail.com, ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2015-07-30 at 16:21 +0200, Heiko Stübner wrote:
> Am Donnerstag, 30. Juli 2015, 06:48:41 schrieb James Bottomley:
> > On Thu, 2015-07-30 at 09:08 +0100, David Woodhouse wrote:
> > > On Wed, 2015-07-29 at 16:39 -0700, James Bottomley wrote:
> > > > On Wed, 2015-07-29 at 18:32 +0100, David Woodhouse wrote:
> > > > > ... as well as contradicting its explicit statement that its intention
> > > > > is to "control the distribution of derivative OR COLLECTIVE WORKS".
> > > > 
> > > > That quote loses the last important piece; that paragraph, which I'll
> > > > quote in full
> > > > 
> > > >         Thus, it is not the intent of this section to claim rights or
> > > >         contest your rights to work written entirely by you; rather, the
> > > >         intent is to exercise the right to control the distribution of
> > > >         derivative or collective works based on the Program.
> > > > 
> > > > says that no additional rights over pieces that were written by another
> > > > (in this case a firmware provider) and are not based on the Program are
> > > > claimed.  That rather supports the idea that the extent of the license
> > > > attachment is limited to derivation.
> > > 
> > > The more conventional interpretation of that paragraph — the
> > > interpretation which *doesn't* require us to believe that the GPL
> > > wasted all those words *explicitly* talking about things which are "not
> > > derived from the Program, and can be reasonably considered independent
> > > and separate works in themselves", only to contradict itself and say
> > > "haha just joking; *ALL* aggregation is fine" — is that this is the GPL
> > > clarifying how it operates within the constraints of copyright law.
> > > 
> > > There is a common — though bogus — complaint about the 'infectious'
> > > nature of the GPL, which goes along the lines of "how can they require
> > > that I publish the source code to the bits that *I* wrote. Copyright
> > > law gives them no rights over *my* code".
> > > 
> > > The paragraph you cite above is more reasonably interpreted as a
> > > clarification that the GPL isn't claiming any *rights* over your own
> > > separate works, and that it merely operates by withholding permission
> > > to use the *GPL'd* part in that context.
> > > 
> > > But again, I'm not requiring that you publicly accept this point of
> > > view. There is plenty of scope for debate, and it's not impossible that
> > > a court *could* uphold your interpretation and effectively just delete
> > > the paragraphs of the GPL that you don't like.
> > > 
> > > All I'm asking is that you stop making the bogus claim that yours is
> > > the *only* possible interpretation. It isn't even the sanest one.
> > 
> > OK, let us suppose for the sake of argument that this is correct and the
> > GPL does manage to get extended to non derived included projects.  Even
> > in that case, we're not causing any corporate legal jeopardy because of
> > the principle of estoppel. Estoppel says we cannot accuse someone of
> > breaching our licence for something we also did.  So if we ship the
> > firmware with the kernel, anyone else also shipping firmware with the
> > kernel is automatically innoculated against accusations of license
> > breach for that action.
> 
> Which may or may not be true in all jurisdictions. Aka in germany gpl 
> violation suits most of the time take up device vendors, not the non-european 
> soc vendor who violated the license originally.

In German law, the principle of Estoppel mostly covered by the doctrine
of venire contra factum proprium.

> Also what about the termination clause? According to [0] §4 says something 
> along the lines of "Under v2, violators forfeit their rights to redistribute 
> and modify the GPL’d software until those rights are explicitly reinstated by 
> the copyright holder."
> 
> So while they may not be sued, they probably still also don't get the 
> redistribution and modification rights?
> 
> 
> [0] https://softwarefreedom.org/resources/2008/compliance-guide.html

Estoppel means all clauses that the licensor would violate are rendered
undenforceable if the licensee violates them in the same manner.  That
doesn't mean estoppel extinguishes the termination clause but it does
mean you cannot use the termination clause to give alternative effect to
the estopped license breach.

James
